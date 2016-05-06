json.array! @beers do |beer|
	json.name beer.name
	json.abv beer.abv
	json.ibu beer.ibu
	json.description beer.description
	json.category beer.category
	json.style beer.style
	json.brewery beer.brewery

end