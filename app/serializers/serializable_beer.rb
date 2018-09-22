class SerializableBeer < JSONAPI::Serializable::Resource
  type 'beers'
  belongs_to :brewery
  belongs_to :beer_style

  attributes :name, :abv, :ibu, :description, :id

  attribute :brewery_name do
    @object.brewery.name
  end

  attribute :beer_style do
    @object.beer_style.name
  end
end
