class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :ingredients
      t.string :glassware
      t.text :technique
      t.boolean :signature

      t.timestamps
    end
  end
end
