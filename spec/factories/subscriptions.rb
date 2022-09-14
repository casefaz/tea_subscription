FactoryBot.define do
  factory :subscription do
    price { Faker::Number.betwee(from: 10.5, to: 50.75) }
    active { true }
    date_shipped { "2022-09-13" }
    frequency { 1 }
  end
end
