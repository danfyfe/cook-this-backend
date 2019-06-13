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

    ingredients = doc.css('.recipe-print__h2 + ul li, .recipe-print__h2 + ul + ul li').map do |li|
      li.text.strip
    end

    steps = doc.css('.recipe-print__directions li').map do |li|
      li.text.strip
    end

    prep_time_items = doc.css('.prepTime__item')

    {
      title: doc.css('.recipe-print__title').text,
      description: doc.css('.recipe-print__description').text,
      image: doc.css('.recipe-print__recipe-img').attr('src').value,
      ingredients: ingredients,
      steps: steps,
      prep_time: prep_time_items.any? ? prep_time_items[1].attr('aria-label').strip : nil,
      cook_time: prep_time_items.any? ? prep_time_items[2].attr('aria-label').strip : nil,
      ready_in_time: prep_time_items.any? ? prep_time_items[3].attr('aria-label').strip : nil,
    }
  end
end
