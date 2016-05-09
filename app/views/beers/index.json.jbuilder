json.beers @beers do |beer|
	json.id beer.id
	json.name beer.name
	json.abv beer.abv
	json.ibu beer.ibu
	json.description beer.description
	json.brewery beer.brewery
	json.style beer.style
	json.category beer.category

end
