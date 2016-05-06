class BeersController < ApplicationController

	def index
		@beers = Beer.includes(:category).all
		@beers.as_json
	end

end