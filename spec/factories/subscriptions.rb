FactoryBot.define do
  factory :subscription do
    customer
    tier
    status { 0 }
  end
end
