FactoryBot.define do
  factory :subscription do
    price { 1.5 }
    active { false }
    date_shipped { "2022-09-13" }
    frequency { 1 }
  end
end
