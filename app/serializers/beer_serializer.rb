class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :abv, :ibu
end
