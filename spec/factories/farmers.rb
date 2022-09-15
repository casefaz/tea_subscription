FactoryBot.define do
  factory :farmer do
    region { Faker::JapanesesMedia::OnePiece }
    years_active { Faker::Number.between(from: 1, to: 35) }
    email { Faker::Internet.email }
    first_name { Faker::TvShows::StarTrek }
    last_name { Faker::Games::Pokemon }
  end
end
