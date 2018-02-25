When /^I visit the home page$/ do
  visit root_path
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end
