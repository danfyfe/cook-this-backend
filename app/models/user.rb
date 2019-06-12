class User < ApplicationRecord
  has_secure_password
  has_many :recipe_folders
  has_many :recipes, through: :recipe_folders
end
