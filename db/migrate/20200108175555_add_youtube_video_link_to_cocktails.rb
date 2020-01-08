class AddYoutubeVideoLinkToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :youtube_link, :string
  end
end
