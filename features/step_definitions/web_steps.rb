When /^I visit the home page$/ do
  visit root_path
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end


Given /^the following "(.*?)" exist with:$/ do |plural_model, table|
  model_symbol = plural_model.singularize.gsub(/\s+/,"").underscore.to_sym
  parsed_table = parse_table(table)
  parsed_table.each do |attributes|
    create_model(model_symbol, attributes)
  end
end

And /^I click "([^"]*)"$/ do |link_text|
  find('a', text: link_text).click
end

Then /^I should see the following beers in the table:$/ do |table|
  table_results = page.find('#beer-list tr').map do |row|
    row.children.map do |cell|
      cell.text
    end
  end

  expect_table.diff!(table_results)
end

def create_model(model, hash)
  if model == :beer
    hash[:beer_style] = BeerStyle.find_by_name(hash[:beer_style])
    hash[:brewery] = Brewery.find_by_name(hash[:brewery])
  end
  if model == :beer_style
    hash[:category] = Category.find_by_name(hash[:category])
  end
  create(model, hash)
end

def parse_table(table)
  raw_table = table.raw
  columns = raw_table.shift
  values = raw_table.map do |row|
    row_hash = {}
    row.each_with_index do |value, index|
      key = columns[index].to_sym
      row_hash[key] = value
    end
    row_hash
  end
end
