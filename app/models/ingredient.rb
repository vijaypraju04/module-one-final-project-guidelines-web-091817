class Ingredient < ActiveRecord::Base
  has_many :recipe
  has_many :cocktail, through: :recipe
end
