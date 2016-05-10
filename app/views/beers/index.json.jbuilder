json.array!(@beers) do |beer|
  json.id beer.id
  json.name beer.name
  json.ibu  beer.ibu
  json.abv beer.abv
  json.description  beer.description
  json.brewery beer.brewery
  json.beer_style beer.beer_style
  json.category beer.category

end
