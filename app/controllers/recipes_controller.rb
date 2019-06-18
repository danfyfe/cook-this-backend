require 'nokogiri'
require 'open-uri'

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes, include: [:ingredients, :steps]
  end

  def create
    recipe_object = get_recipe_from_print_url(convert_to_print_url(params[:url]))
    @recipe = Recipe.new(recipe_object.except(:ingredients, :steps))
    if @recipe.save
      recipe_object[:ingredients].each do |ingr|
        Ingredient.create(content: ingr.strip, recipe: @recipe)
      end

      recipe_object[:steps].each_with_index do |step, i|
        Step.create(content: step.strip, number: i + 1, recipe: @recipe)
      end

      render json: @recipe, include: [:ingredients, :steps]
    end
  end


  private

  def convert_to_print_url(url)
    url = url.split("/")
    url[0..url.index("recipe") + 2].join("/") + "/print"
  end


  def get_recipe_from_print_url(url)
    html = open(url)
    doc = Nokogiri::HTML(html)

    description = doc.css('.recipe-print__description').text

    ingredients = doc.css('.recipe-print__h2 + ul li, .recipe-print__h2 + ul + ul li').map do |li|
      li.text.strip
    end

    steps = doc.css('.recipe-print__directions li').map do |li|
      li.text.strip
    end

    prep_time_items = doc.css('.prepTime__item').map do |li|
      li.attr('aria-label')
    end

    prep_time = prep_time_items.find do |item|
      item.class === "string" ? item.starts_with?("Prep time") : false
    end

    cook_time = prep_time_items.find do |item|
      item.class === "string" ? item.starts_with?("Cook time") : false
    end

    ready_in_time = prep_time_items.find do |item|
      item.class === "string" ? item.starts_with?("Ready in") : false
    end

    {
      title: doc.css('.recipe-print__title').text,
      description: (description ? description : "No description provided"),
      image: doc.css('.recipe-print__recipe-img').attr('src').value,
      ingredients: ingredients,
      steps: steps,
      prep_time: (prep_time ? prep_time : "No prep time"),
      cook_time: (cook_time ? cook_time : "No cook time"),
      ready_in_time: (ready_in_time ? ready_in_time : "Cooks ad infinitum"),
    }
  end
end
