class Cocktail < ActiveRecord::Base
  has_many :recipe
  has_many :ingredients, through: :recipe
end
