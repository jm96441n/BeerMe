class BeersController < ApplicationController

	def index
		@beers = Beer.includes(:category, :style, :brewery).all
	end

	def random
		id = rand(0..Beer.count)
		@beer = Beer.find(id)
	end

end
