FactoryBot.define do
  factory :artist do
    name              { Faker::Name.name }
    description       { Faker::Lorem.sentence(50) }
    artist_type       "Artist"
    remote_image_url  "http://www.collingsguitars.com/img/home/t-series-2017-alt.jpg"
  end
end
