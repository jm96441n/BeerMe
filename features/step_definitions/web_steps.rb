When /^I visit the home page$/ do
  visit root_path
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end

Given /^the following Categories exist with:$/ do |table|
  table.hashes.map { |hash| create(:category, name: hash[:name]) }
end

And /^I click the "([^"]*)" button$/ do |button_text|
  find('button', text: button_text).click
end

And /^I should see a list of buttons with text:$/ do |table|
  table.hashes.each do |hash|
    page.find('button', text: hash[:'Category Name'])
  end
end
