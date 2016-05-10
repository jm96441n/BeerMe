class BeerStylesController < ApplicationController

  def index
    @styles =  BeerStyle.includes(:category).all
  end

end
