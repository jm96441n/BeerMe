class BeerStylesController < ApplicationController

  def index
    @styles =  BeerStyle.all
  end

end
