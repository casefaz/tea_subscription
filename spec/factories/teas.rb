FactoryBot.define do
  factory :tea do
    possible_type = [0, 1, 2, 3, 4]
    name { [Faker::Games::DnD, Faker::Tea].join(" ")}
    type { possible_type.sample }
    description { Faker::Coffee.notes }
    recommended_brew_time { "15 seconds" }
    brew_temp { Faker::Number.number(digits: 3) }
    origin { Faker::JapanesesMedia::OnePiece }
    oxidation { "Medium" }
    packaged_on { "2022-09-13 17:10:14" }
    processing_method { "Pan Roasted" }
    farmer
  end
end
