require 'HTTParty'
require 'json'
require 'pry'

class Adapter
  ROUTE = 'https://raw.githubusercontent.com/teijo/iba-cocktails/master/recipes.json'

  def self.get_route
    ROUTE
  end

  def self.get_hash
    response = HTTParty.get(ROUTE)
    JSON.parse(response)
  end
end

cocktail_hash = Adapter.get_hash

def cocktail_names(cocktail_hash)
  cocktails = []
  cocktail_hash.each do |cocktail|
    cocktails << cocktail["name"]
  end
  cocktails
end

# def cocktail_ingredients(cocktail_hash)
#   liquor_hash = nil
#   cocktail_hash.map do |cocktail|
#     liquor_hash = cocktail["ingredients"][0]
# end
# end

def first_index(cocktail_hash)
  cocktail_hash.each do |hash|
    thing = hash["ingredients"][0]
    # first_ingredient = hash['ingredients'][0]
    # first_ingredient.each do |liquor|
    thing["ingredient"]
      binding.pry
  end
end


## trying to return the first index on the
## ingredients array

# def cocktails_by_likka(cocktail_hash, likka)
#   cocktail_hash.select do |cocktail|
#     liquor_hash = cocktail["ingredients"][0]
#     liquor_hash.find do |key, value|
#       liquor_hash["ingredient"] == likka
#       binding.pry
#     end
#   end
# end

## find the liquor [ingredient] inside the first
## ingredients object

first_index(cocktail_hash)

cocktail_ingredients(cocktail_hash)

# cocktails_by_likka(cocktail_hash, "Gin")
