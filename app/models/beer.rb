class Beer < ApplicationRecord
  belongs_to :brewery, optional: true
  belongs_to :beer_style, optional: true
  belongs_to :category, optional: true

  # Returns the category for this beer
  def category
    beer_style.category
  end
end
