FactoryBot.define do
  factory :artist do
    name          { Faker::Name.name }
    description   { Faker::Lorem.sentence(50) }
    artist_type   "Artist"
  end
end
