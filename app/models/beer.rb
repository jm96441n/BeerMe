class Beer < ApplicationRecord

  # Fuzzy search for beers by name
  scope :search_by_name, ->(name) { where('name ILIKE ?', "%#{name}%") }

  belongs_to :brewery, optional: true
  belongs_to :beer_style, optional: true
  belongs_to :category, optional: true
end
