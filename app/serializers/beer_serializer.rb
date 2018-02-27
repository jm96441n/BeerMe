class BeerSerializer
  include FastJsonapi::ObjectSerializer
  set_type :beer
  attributes :name, :id, :ibu, :abv
  belongs_to :beer_style
  belongs_to :brewery
end
