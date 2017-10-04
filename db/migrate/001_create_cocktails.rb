class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |c|
      c.string :name
      c.string :glass
    end
  end
end
