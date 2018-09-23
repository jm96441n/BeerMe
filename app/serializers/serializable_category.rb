class SerializableCategory < JSONAPI::Serializable::Resource
  type 'categories'

  attributes :name
end
