class BeerStyle < ApplicationRecord
  belongs_to :category

  has_many :beers
end
