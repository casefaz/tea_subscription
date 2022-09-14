FactoryBot.define do
  factory :subscription do
    name { Faker::Dessert.topping }
    price { (Faker::Number.between(from: 10.5, to: 50.75)).round(2) }
    active { true }
    date_shipped { "2022-09-13" }
    frequency { 1 }
  end
end
