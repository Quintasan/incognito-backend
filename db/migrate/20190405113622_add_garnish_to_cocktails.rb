class AddGarnishToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :garnish, :string
  end
end
