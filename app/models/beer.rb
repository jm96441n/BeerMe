class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer_style

  # Returns the category for this beer
  def category
    beer_style.category
  end
end
