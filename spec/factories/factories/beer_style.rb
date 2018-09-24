FactoryBot.define do
  factory :beer_style do
    name { 'Name' }
    external_id { 1 }
    association :category
  end
end
