FactoryBot.define do
  factory :song do
    title     { Faker::Lorem.words(3).join(' ') }
    year      { Faker::DateTime.year($max = 'now') }
    artist    { build(:artist) }
  end
end
