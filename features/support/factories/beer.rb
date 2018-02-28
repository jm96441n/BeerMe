FactoryBot.define do
  factory :beer do
    name "Name"
    abv 6.5
    ibu 92
    association :brewery
    association :beer_style
    association :category
  end
end
