require 'csv'

options = {
	headers: true,
	header_converters: :symbol
}

CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/beers.csv", options) do |row|
	beer = Hash.new
	beer[:name] = row[:name]
	beer[:abv] = row[:abv].to_f
	beer[:ibu] = row[:ibu].to_i
	beer[:description] = row[:descript]
	beer[:category_id] = row[:cat_id].to_i
	beer[:brewery_id] = row[:brewery_id].to_i
	beer[:beer_style_id] = row[:style_id]

	Beer.create(beer)
	p Beer.last.name
end

CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/breweries.csv",options) do |row|
	brew = Hash.new

	brew[:name] = row[:name]
	brew[:address1] = row[:address1]
	brew[:address2] = row[:address2] || ' '
	brew[:city] = row[:city]
	brew[:state] = row[:state]
	brew[:code] = row[:code]
	brew[:country] = row[:country]
	brew[:phone] = row[:phone]
	brew[:website] = row[:website]
	brew[:description] = row[:descript]

	Brewery.create(brew)
	p Brewery.last.name
end

CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/categories.csv", options) do |row|
	cat = Hash.new

	cat[:name] = row[:cat_name]

	Category.create(cat)
	p Category.last.name

end


CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/styles.csv", options) do |row|
	style = Hash.new
	style[:name] = row[:style_name]
	style[:category_id] = row[:cat_id]

	BeerStyle.create(style)
	p BeerStyle.last.name
end
