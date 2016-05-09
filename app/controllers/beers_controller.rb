class BeersController < ApplicationController

	def index
		@beers = Beer.includes(:category, :style, :brewery).all
	end

end