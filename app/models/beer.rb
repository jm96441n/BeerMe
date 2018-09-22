class Beer < ApplicationRecord
  include FuzzySearchByName

  belongs_to :brewery, optional: true
  belongs_to :beer_style, optional: true
  belongs_to :category, optional: true

  scope :search_by_style, -> (style) { joins(:beer_style).where('beer_styles.name ILIKE ?', "%#{style}%") }
end
