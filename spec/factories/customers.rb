FactoryBot.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Creature::Bird }
    email { Faker::Internet.email }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    zip { Faker::Address.zip }
  end
end
