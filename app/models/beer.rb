class Beer < ApplicationRecord
  belongs_to :brewery, optional: true
  belongs_to :beer_style, optional: true
  belongs_to :category, optional: true

  def self.random
    beer_id = select_random_id
    Beer.find(beer_id)
  end

  class << self
    private def select_random_id
      beer_ids = Beer.pluck(:id)
      rand(beer_ids.length - 1)
    end
  end
end
