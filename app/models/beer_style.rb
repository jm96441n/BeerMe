class BeerStyle < ApplicationRecord
  belongs_to :category, optional: true

  has_many :beers
end
