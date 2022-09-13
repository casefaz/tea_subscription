FactoryBot.define do
  factory :tea do
    name { "MyString" }
    type { 1 }
    description { "MyText" }
    recommended_brew_time { "MyString" }
    brew_temp { 1 }
    origin { "MyString" }
    oxidation { "MyString" }
    packaged_on { "2022-09-13 17:10:14" }
    processing_method { "MyString" }
    farmer { nil }
  end
end
