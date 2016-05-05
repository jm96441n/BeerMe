class Style < ActiveRecord::Base
	belongs_to :category
	has_many :beers

	validates :name, :category_id, presence: true

end