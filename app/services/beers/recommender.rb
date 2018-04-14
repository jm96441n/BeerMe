module Beers
  class Recommender < ActiveService
    def initialize(current_beer, prev_recommendations = [])
      @current_beer = current_beer
      @prev_recommendations = prev_recommendations
      @beer_style = @current_beer.beer_style
      @category = @current_beer.category
      @ibu = @current_beer.ibu if @current_beer.ibu > 0
      @abv = @current_beer.abv if @current_beer.abv > 0
    end

    def call
      prev_recommendation_count = @prev_recommendations.length
      while prev_recommendation_count == @prev_recommendations.length
        recommended_beer = make_recommendation
        prev_recommendation_count += 1 if @prev_recommendations.exclude?(recommended_beer)
      end
      result(recommended_beer)
    end

    private

    def make_recommendation
      if @beer_style && @category
        find_by_style_and_category
      elsif @beer_style
        find_by_beer_style
      elsif @category
        find_by_category
      else
        find_beer
      end
    end

    def find_by_style_and_category
      if @abv && @ibu
        find_by_abv_and_ibu(category: @category, beer_style: @beer_style)
      elsif @abv
        find_by_abv(category: @category, beer_style: @beer_style)
      elsif @ibu
        find_by_ibu(category: @category, beer_style: @beer_style)
      else
        found_beer = Beer.where(category: @category, beer_style: @beer_style).sample until found_beer
      end
    end

    def find_by_beer_style
      if @abv && @ibu
        find_by_abv_and_ibu(beer_style: @beer_style)
      elsif @abv
        find_by_abv(beer_style: @beer_style)
      elsif @ibu
        find_by_ibu(beer_style: @beer_style)
      else
        found_beer = Beer.where(beer_style: @beer_style).sample until found_beer
        found_beer
      end
    end

    def find_by_category
      if @abv && @ibu
        find_by_abv_and_ibu(category: category)
      elsif @abv
        find_by_abv(category: category)
      elsif @ibu
        find_by_ibu(category: @category)
      else
        found_beer = Beer.where(category: @category).sample until found_beer
        found_beer
      end
    end

    def find_beer
      if @abv && @ibu
        find_by_abv_and_ibu
      elsif @abv
        find_by_abv
      elsif @ibu
        find_by_ibu
      else
        Beer.all.sample
      end
    end

    def find_by_ibu(category: nil, beer_style: nil)
      beer = nil
      until beer
        ibu = change_for_ibu + @ibu
        beer = Beer.where(ibu: ibu, category: category, beer_style: beer_style).sample
      end
      beer
    end

    def find_by_abv(category: nil, beer_style: nil)
      beer = nil
      until beer
        abv = change_for_abv + @abv
        beer = Beer.where(abv: abv, category: category, beer_style: beer_style).sample
      end
      beer
    end

    def find_by_abv_and_ibu(category: nil, beer_style: nil)
      beer = nil
      until beer
        ibu = change_for_ibu + @ibu
        abv = change_for_abv + @abv
        beer = Beer.where(ibu: ibu, abv: abv, category: category, beer_style: beer_style).sample
      end
      beer
    end

    def change_for_abv
      rand(-1.0..1.0).round(1)
    end

    def change_for_ibu
      rand(-5..5)
    end
  end
end
