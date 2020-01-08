class AddCategoryRefToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_reference :cocktails, :category, foreign_key: true
  end
end
