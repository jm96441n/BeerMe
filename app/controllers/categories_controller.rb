class CategoriesController < ApplicationController

  def index
    render jsonapi: Category.order(:name)
  end
end
