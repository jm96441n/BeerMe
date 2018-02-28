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

Then /^I should see the following beers in the table:$/ do |expected_table|
  page.find('#beer-list')

  actual_table = [[]]

  all('#beer-list thead tr th').each do |cell|
    actual_table[0] << cell.text
  end

  all('#beer-list tbody tr th').each do |cell|
    actual_table << [cell.text]
  end

  i = 1
  all('#beer-list tbody tr td').each_with_index do |cell, index|
    actual_table[i] << cell.text
    i += 1 if index.odd? && index > 0
  end

  expected_table.diff!(actual_table)
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
