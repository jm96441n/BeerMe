class Beers::ShowSerializer < BeerSerializer
  attributes :description
  belongs_to :beer_style
  belongs_to :brewery
  belongs_to :category
end
