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
  address = Hash.new
	brew[:name] = row[:name]
	brew[:phone] = row[:phone]
	brew[:website] = row[:website]
  brew[:description] = row[:descript]

  address[:address1] = row[:address1]
	address[:address2] = row[:address2] || ' '
	address[:city] = row[:city]
	address[:state] = row[:state]
	address[:code] = row[:code]
	address[:country] = row[:country]

  brew = Brewery.new(brew)
  if brew.save
    brew.addresses.create(address)
    p brew.name
  else
    p "#{brew.name} WAS NOT ADDED"
  end
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
