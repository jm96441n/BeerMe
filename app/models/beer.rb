class Beer < ActiveRecord::Base
	belongs_to :category
	belongs_to :beer_style
	belongs_to :brewery

	validates :name, :category_id, :beer_style_id, :brewery_id, presence: true

end
