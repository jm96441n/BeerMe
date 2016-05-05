class Beer < ActiveRecord::Base
	belongs_to :category
	belongs_to :style
	belongs_to :brewery

	validates :name, :category_id, :style_id, :brewery_id, presence: true

end