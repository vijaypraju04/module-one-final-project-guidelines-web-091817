require 'HTTParty'
require 'json'

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
