class ChangeCocktailMenuDefaultValueToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:cocktails, :menu, false)
  end
end
