json.extract! cocktail, :id, :name, :ingredients, :garnish, :glassware, :technique, :signature, :uuid, :created_at, :updated_at, :menu, :youtube_link
json.category cocktail.category_name
json.url cocktail_url(cocktail, format: :json)
