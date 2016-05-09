class Category < ActiveRecord::Base
	has_many :beers
	has_many :beer_styles

	validates :name, presence: true
end
