require 'csv'

options = {
	headers: true,
	header_converters: :symbol
}

CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/breweries.csv",options) do |row|
	brew = Hash.new
  address = Hash.new
	brew[:name] = row[:name]
	brew[:phone] = row[:phone]
	brew[:website] = row[:website]
	brew[:description] = row[:descript]
	brew[:external_id] = row[:id].to_i

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
		p brew.errors
  end
end

CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/categories.csv", options) do |row|
	cat = Hash.new

	cat[:name] = row[:cat_name]
	cat[:external_id] = row[:id].to_i

	c = Category.new(cat)
	if c.save
		p c.name
	else
		p "#{c.name} WAS NOT ADDED"
		p c.errors
	end
end


CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/styles.csv", options) do |row|
	style = Hash.new
	style[:name] = row[:style_name]
	style[:category_id] = Category.find_by_external_id(row[:cat_id]).id
	style[:external_id] = row[:id].to_i

	style = BeerStyle.new(style)
	if style.save
		p style.name
	else
		p "#{style.name} WAS NOT ADDED"
		p style.errors
	end
end

CSV.foreach(File.dirname(__FILE__) + "/openbeerdb_csv/beers.csv", options) do |row|
	if row[:name]
		beer = Hash.new
		beer[:name] = row[:name]
		beer[:abv] = row[:abv].to_f
		beer[:ibu] = row[:ibu].to_i
		beer[:description] = row[:descript]
		beer[:brewery_id] = Brewery.find_by_external_id(row[:brewery_id])&.id
		beer[:beer_style_id] = BeerStyle.find_by_external_id(row[:style_id])&.id
		beer[:category_id] = Category.find_by_external_id(row[:cat_id])&.id

		b = Beer.new(beer)
		if b.save
			p b.name
		else
			p "#{b.name} WAS NOT ADDED"
			p.errors
		end
	end
end
