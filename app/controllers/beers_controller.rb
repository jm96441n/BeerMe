class BeersController < ApplicationController
  before_action :get_beer, only: :show
  def index
    @beers = Beer.all

    render json: ActiveModel::Serializer::CollectionSerializer.new(@beers)
  end

  def show
    render json: Beers::ShowSerializer.new(@beer)
  end

  private

  def get_beer
    @beer = Beer.find(params[:id])
  end
end
