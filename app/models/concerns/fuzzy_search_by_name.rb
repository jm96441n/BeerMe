module FuzzySearchByName
  extend ActiveSupport::Concern

  included do
    # Fuzzy search for beers by name
    scope :search_by_name, ->(name) { where("#{table_name}.name ILIKE ?", "%#{name}%") }
  end
end
