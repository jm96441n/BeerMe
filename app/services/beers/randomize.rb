module Beers
  class Randomize < ActiveService
    attr_reader :beer

    def call
      beer = random
      @result = result(beer)
    end

    private

    # Returns a random beer based on the randomly selected id
    def random
      beer_id = select_random_id
      Beer.find(beer_id)
    end

    # Returns a randomly selected id of a beer from the available beer ids
    def select_random_id
      beer_ids      = Beer.pluck(:id)
      index_of_beer = rand(beer_ids.length - 1)
      beer_ids[index_of_beer]
    end
  end
end
