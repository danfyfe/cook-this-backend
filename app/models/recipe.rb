class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps
  has_many :recipe_folders
  has_many :users, through: :recipe_folders
end
