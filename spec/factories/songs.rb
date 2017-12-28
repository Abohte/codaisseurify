FactoryBot.define do
  factory :song do
    title     { Faker::Lorem.words(3).join(' ') }
    year      (1950 + Random.rand(60))
    artist    { build(:artist) }
  end
end
