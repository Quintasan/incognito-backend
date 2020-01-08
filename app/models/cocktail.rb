class Cocktail < ApplicationRecord
  delegate :name, to: :category, prefix: true
  belongs_to :category
end
