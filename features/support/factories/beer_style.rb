FactoryBot.define do
  factory :beer_style do
    name "Name"
    association :category
  end
end
