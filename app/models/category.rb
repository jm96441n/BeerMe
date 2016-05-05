class Category < ActiveRecord::Base
	has_many :beers
	has_many :styles

	validates :name, presence: true
end