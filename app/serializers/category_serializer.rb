class CategorySerializer
  include FastJsonapi::ObjectSerializer
  set_type :category
  attributes :name, :id
  has_many :beer_styles
end
