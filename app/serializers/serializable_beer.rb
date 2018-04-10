class SerializableBeer < JSONAPI::Serializable::Resource
  type 'beers'
  attributes :name, :abv, :ibu, :description
end
