module Beers
  class Randomize < ActiveService
    attr_reader :beer

    def call
      beer = random
      @result = result(beer)
    end

    private

    def random
      beer_id = select_random_id
      Beer.find(beer_id)
    end

    def select_random_id
      beer_ids      = Beer.pluck(:id)
      index_of_beer = rand(beer_ids.length - 1)
      beer_ids[index_of_beer]
    end
  end
end
