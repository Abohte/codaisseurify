FactoryBot.define do
  factory :artist do
    name          { Faker::Name.name }
    description   { Faker::Lorem.sentence(50) }
    type          "Artist"
  end
end
