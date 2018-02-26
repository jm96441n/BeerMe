class CategoriesController < ApplicationController
  def index
    options        = {}
    @categories    = Category.all
    options[:meta] = @categories.count

    render json: CategorySerializer.new(@categories, options).serialized_json
  end
end
