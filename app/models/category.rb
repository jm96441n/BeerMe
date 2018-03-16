class Category < ApplicationRecord
  has_many :beer_styles
  has_many :beers
end
