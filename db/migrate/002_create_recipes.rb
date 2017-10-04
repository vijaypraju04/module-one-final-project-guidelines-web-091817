class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |r|
      r.integer :cocktail_id
      r.integer :ingredient_id
      r.text :preparation
  end
end
end
