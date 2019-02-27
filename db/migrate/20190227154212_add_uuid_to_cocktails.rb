class AddUuidToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :uuid, :uuid, default: "gen_random_uuid()", null: false
  end
end
