class Cocktail < ActiveRecord::Base
end

class AddMenuToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :menu, :boolean, default: true
    Cocktail.update_all(menu: false)
  end
end
