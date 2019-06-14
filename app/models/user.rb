class User < ApplicationRecord
  has_secure_password
  has_many :favorites
  has_many :recipes, through: :favorites
  has_many :notes, through: :favorites

  validates :username, presence: true, uniqueness: true
end
