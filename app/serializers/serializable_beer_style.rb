class SerializableBeerStyle < JSONAPI::Serializable::Resource
  type 'beer_styles'

  attributes :name
end
