# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'nokogiri'

url1 = "https://www.allrecipes.com/recipe/18830/spanish-rice-bake/print/"
url2 = "https://www.allrecipes.com/recipe/235158/worlds-best-honey-garlic-pork-chops/print/"
url3 = "https://www.allrecipes.com/recipe/258468/beef-stroganoff-for-instant-pot/?internalSource=previously%20viewed&referringContentType=Homepage&clickId=cardslot%2010"

def convert_to_print_url(url)
  url = url.split("/")
  url[0..url.index("recipe") + 2].join("/") + "/print"
end

# puts convert_to_print_url(url3)

def get_recipe_from_print_url(url)
  html = open(url)
  doc = Nokogiri::HTML(html)

  ingredients = doc.css('.recipe-print__h2 + ul li, .recipe-print__h2 + ul + ul li').map do |li|
    li.text.strip
  end

  directions = doc.css('.recipe-print__directions li').map do |li|
    li.text.strip
  end

  prep_time_items = doc.css('.prepTime__item')

  {
    title: doc.css('.recipe-print__title').text,
    description: doc.css('.recipe-print__description').text,
    image: doc.css('.recipe-print__recipe-img').attr('src').value,
    ingredients: ingredients,
    directions: directions,
    prep_time: prep_time_items[1].attr('aria-label'),
    cook_time: prep_time_items[2].attr('aria-label'),
    ready_in_time: prep_time_items[3].attr('aria-label'),
  }
end

pp (get_recipe_from_print_url(convert_to_print_url(url3)))

#
#
#
# puts "\n\n", img_src, "\n\n", title, "\n\n", blurb, "\n\n", ingredients.inspect, "\n\n", directions.inspect
