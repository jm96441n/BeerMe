json.breweries @breweries, :id, :name, :address1, :address2, :city, :state, :country, :code, :phone, :website, :description
json.array!(@breweries) do |brewery|
  json.id brewery.id
  json.name brewery.name
  json.address1 brewery.address1
  json.address2 brewery.address2
  json.city brewery.city
  json.state  brewery.state
  json.country  brewery.country
  json.code brewery.code
  json.phone  brewery.phone
  json.website  brewery.website
  json.description  brewery.description
end
