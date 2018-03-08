class Beer < ApplicationRecord
  belongs_to :brewery, optional: true
  belongs_to :beer_style, optional: true
  belongs_to :category, optional: true

  def self.random
    number_beers = Beer.count
    beer_id = rand(number_beers - 1)
    Beer.find(beer_id)
  end
end
