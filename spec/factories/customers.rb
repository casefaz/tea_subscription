FactoryBot.define do
  factory :customer do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    street_address { "MyString" }
    city { "MyString" }
    zip { 1 }
  end
end
