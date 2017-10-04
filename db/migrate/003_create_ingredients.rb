class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |i|
      i.string :ingredient_name
      i.string :unit
      i.float :amount
    end
  end
end
