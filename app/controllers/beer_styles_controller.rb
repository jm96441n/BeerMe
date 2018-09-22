class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyle.order(:name)
    render jsonapi: @beer_styles, fields: { beer_styles: %i[name] }
  end
end
