When /^I (visit|am on) the home page$/ do |_visit_or_on|
  visit root_path
end

Then /^I should( not)? see "([^"]*)"$/ do |should_not, text|
  if should_not
    expect(page).to_not have_text(text, exact: true)
  else
    expect(page).to have_text(text, exact: true)
  end
end

Then /^I should( not)? see "([^"]*)" on the page$/ do |should_not, text|
  if should_not
    expect(page).to_not have_text(text)
  else
    expect(page).to have_text(text)
  end
end


Given /^the following "(.*?)" exist with:$/ do |plural_model, table|
  model_symbol = plural_model.singularize.gsub(/\s+/,"").underscore.to_sym
  parsed_table = parse_table(table)
  parsed_table.each do |attributes|
    create_model(model_symbol, attributes)
  end
end

And /^I click "([^"]*)"( within "([^"]*)")?$/ do |link_text, selector|
  if selector
    id = selector.downcase.split(' ').join('_')
    within("##{id}") do
      find(:link_or_button, text: link_text, match: :prefer_exact).click
    end
  else
    find(:link_or_button, text: link_text, match: :prefer_exact).click
  end
end

And /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, input|
  fill_in field, with: input
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

  row = 1
  all('#beer-list tbody tr td').each_with_index do |cell, index|
    actual_table[row] << cell.text
    # Move to the next row once all the values from that row have been added, the first value of the acutal_table
    # array is an array of the header columns
    row += 1 if actual_table[row].length == actual_table[0].length
  end

  expected_table.diff!(actual_table)
end

And /^I should see (.*) items in the "(.*?)" table$/ do |count, table_name|
  count = count.to_i
  table_name = "##{table_name.singularize}-list"
  list_count = page.find(table_name).all('tr').count - 1
  expect(list_count).to eq(count)
end

def create_model(model, hash)
  if model == :beer
    hash[:beer_style] = BeerStyle.find_by_name(hash[:beer_style])
    hash[:brewery]    = Brewery.find_by_name(hash[:brewery])
    hash[:category]   = Category.find_by_name(hash[:category])
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
