# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'pry'
# binding.pry
customer1 = 
  Customer.create!(
    first_name:  Faker::Name.first_name,
    last_name:  Faker::Creature::Bird.common_family_name,
    email:  Faker::Internet.email,
    street_address:  Faker::Address.street_address, 
    city:  Faker::Address.city, 
    zip:  Faker::Address.zip
  )
  customer2 = 
  Customer.create!(
    first_name:  Faker::Name.first_name,
    last_name:  Faker::Creature::Bird.common_family_name,
    email:  Faker::Internet.email,
    street_address:  Faker::Address.street_address, 
    city:  Faker::Address.city, 
    zip:  Faker::Address.zip
  )
  customer3 = 
  Customer.create!(
    first_name:  Faker::Name.first_name,
    last_name:  Faker::Creature::Bird.common_family_name,
    email:  Faker::Internet.email,
    street_address:  Faker::Address.street_address, 
    city:  Faker::Address.city, 
    zip:  Faker::Address.zip
  )

tier1 =
  Tier.create!(
    name:  Faker::Dessert.topping,
    price:  (Faker::Number.between(from: 10.5, to: 50.75)).round(2),
    date_shipped:  "2022-09-13",
    frequency:  Faker::Number.within(range: 1..3) 
  )
tier2 =
Tier.create!(
  name:  Faker::Dessert.topping,
  price:  (Faker::Number.between(from: 10.5, to: 50.75)).round(2),
  date_shipped:  "2022-09-13",
  frequency:  Faker::Number.within(range: 1..3) 
)
tier3 =
Tier.create!(
  name:  Faker::Dessert.topping,
  price:  (Faker::Number.between(from: 10.5, to: 50.75)).round(2),
  date_shipped:  "2022-09-13",
  frequency:  Faker::Number.within(range: 1..3) 
)
tier4 =
Tier.create!(
  name:  Faker::Dessert.topping,
  price:  (Faker::Number.between(from: 10.5, to: 50.75)).round(2),
  date_shipped:  "2022-09-13",
  frequency:  Faker::Number.within(range: 1..3) 
)
tier5 =
Tier.create!(
  name:  Faker::Dessert.topping,
  price:  (Faker::Number.between(from: 10.5, to: 50.75)).round(2),
  date_shipped:  "2022-09-13",
  frequency:  Faker::Number.within(range: 1..3) 
)

# binding.pry
subscription1 = Subscription.create!(customer_id: customer1.id, tier_id: tier1.id, status: 0)
subscription2 = Subscription.create!(customer_id: customer1.id, tier_id: tier4.id, status: 1)
subscription3 = Subscription.create!(customer_id: customer1.id, tier_id: tier5.id, status: 0)
subscription4 = Subscription.create!(customer_id: customer2.id, tier_id: tier2.id, status: 1)
subscription5 = Subscription.create!(customer_id: customer2.id, tier_id: tier3.id, status: 0)
subscription6 = Subscription.create!(customer_id: customer2.id, tier_id: tier1.id, status: 0)
subscription7 = Subscription.create!(customer_id: customer3.id, tier_id: tier4.id, status: 1)
subscription8 = Subscription.create!(customer_id: customer3.id, tier_id: tier5.id, status: 0)
subscription9 = Subscription.create!(customer_id: customer3.id, tier_id: tier2.id, status: 0)


