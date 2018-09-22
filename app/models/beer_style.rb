class BeerStyle < ApplicationRecord
  include FuzzySearchByName

  belongs_to :category, optional: true

  has_many :beers
end
