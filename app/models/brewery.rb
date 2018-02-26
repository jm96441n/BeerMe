class Brewery < ApplicationRecord
  acts_as_addressable

  has_many :beers
end
