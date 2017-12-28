# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all

# Artists
eagles = Artist.create!(
  name:"Eagles",
  description:"With five number one singles, 14 Top 40 hits, and four number one albums, the Eagles were among the most successful recording artists of the 1970s. At the end of the 20th century, two of those albums -- Their Greatest Hits (1971-1975) and Hotel California -- ranked among the ten best-selling albums ever, and the popularity of 2007's Long Road Out of Eden proved the Eagles' staying power in the new millennium.",
  artist_type:"Band "
)
bruce_springsteen = Artist.create!(
  name:"Bruce Springsteen",
  description:"In the decades following his emergence on the national scene in 1975, Bruce Springsteen proved to be that rarity among popular musicians, an artist who maintained his status as a frontline recording and performing star, consistently selling millions of albums and selling out arenas and stadiums around the world year after year, as well as retaining widespread critical approbation with ecstatic reviews greeting those discs and shows.",
  artist_type: "Artist"
)
leonard_cohen = Artist.create!(
  name:"Leonard Cohen",
  description:"One of the most fascinating and enigmatic -- if not the most successful -- singer/songwriters of the late '60s, Leonard Cohen retained an audience across six decades of music-making, interrupted by various digressions into personal and creative exploration, all of which have only added to the mystique surrounding him.",
  artist_type: "Artist"
)
dire_straits = Artist.create!(
  name:"Dire Straits",
  description:"Dire Straits emerged during the post-punk era of the late '70s, and while their sound was minimalistic and stripped down, they owed little to punk. If anything, the band was a direct outgrowth of the roots revivalism of pub rock, but where pub rock celebrated good times, Dire Straits were melancholy.",
  artist_type: "Band"
)
rolling_stones = Artist.create!(
  name:"Rolling Stones",
  description:"By the time the Rolling Stones began calling themselves the World's Greatest Rock & Roll Band in the late '60s, they had already staked out an impressive claim on the title. As the self-consciously dangerous alternative to the bouncy Merseybeat of the Beatles in the British Invasion, the Stones had pioneered the gritty, hard-driving blues-based rock & roll that came to define hard rock.",
  artist_type: "Band"
)
bob_dylan = Artist.create!(
  name:"Bob Dylan",
  description:"Bob Dylan's influence on popular music is incalculable. As a songwriter, he pioneered several different schools of pop songwriting. As a vocalist, he broke down the notion that a singer must have a conventionally good voice in order to perform. As a musician, he sparked several genres of pop music.",
  artist_type: "Artist"
)


# Songs:eagles
Song.create!(
  title: "Hotel California",
  year: 1976,
  artist: eagles
)
Song.create!(
  title: "Life in the Fast Lane",
  year: 1976,
  artist: eagles
)
Song.create!(
  title: "Already Gone",
  year: 1974,
  artist: eagles
)
Song.create!(
  title: "The Long Run",
  year: 1979,
  artist: eagles
)
Song.create!(
  title: "Desperado",
  year: 1973,
  artist: eagles
)
Song.create!(
  title: "Heartache Tonight",
  year: 1979,
  artist: eagles
)
Song.create!(
  title: "Best of My Love",
  year: 1974,
  artist: eagles
)
Song.create!(
  title: "Long Road Out Of Eden",
  year: 2007,
  artist: eagles
)
Song.create!(
  title: "Love Will Keep Us Alive ",
  year: 1994,
  artist: eagles
)
Song.create!(
  title: "How Long",
  year: 2007,
  artist: eagles
)
# Songs:bruce_springsteen
Song.create!(
  title: "Born to Run",
  year: 1975,
  artist: bruce_springsteen
)
Song.create!(
  title: "Thunder Road",
  year: 1975,
  artist: bruce_springsteen
)
Song.create!(
  title: "Badlands",
  year: 1978,
  artist: bruce_springsteen
)
Song.create!(
  title: "Tenth Avenue Freeze-Out",
  year: 1975,
  artist: bruce_springsteen
)
Song.create!(
  title: "Atlantic City",
  year: 1982,
  artist: bruce_springsteen
)
Song.create!(
  title: "Jungleland",
  year: 1975,
  artist: bruce_springsteen
)
Song.create!(
  title: "Born in the U.S.A.",
  year: 1984,
  artist: bruce_springsteen
)
Song.create!(
  title: "The River",
  year: 1980,
  artist: bruce_springsteen
)
Song.create!(
  title: "Land of Hope and Dreams",
  year: 2012,
  artist: bruce_springsteen
)
Song.create!(
  title: "Brilliant Disguise",
  year: 1987,
  artist: bruce_springsteen
)
# Songs:leonard_cohen
Song.create!(
  title: "Suzanne",
  year: 1967,
  artist: leonard_cohen
)
Song.create!(
  title: "Bird on the Wire",
  year: 1969,
  artist: leonard_cohen
)
Song.create!(
  title: "Famous Blue Raincoat",
  year: 1971,
  artist: leonard_cohen
)
Song.create!(
  title: "Chelsea Hotel #2",
  year: 1974,
  artist: leonard_cohen
)
Song.create!(
  title: "Lover Lover Lover",
  year: 1974,
  artist: leonard_cohen
)
Song.create!(
  title: "Hallelujah",
  year: 1984,
  artist: leonard_cohen
)
Song.create!(
  title: "First We Take Manhattan",
  year: 1988,
  artist: leonard_cohen
)
Song.create!(
  title: "Waiting for the Miracle",
  year: 1992,
  artist: leonard_cohen
)
Song.create!(
  title: "Going Home",
  year: 2012,
  artist: leonard_cohen
)
# Songs:rolling_stones
Song.create!(
  title: "Time Is On My Side",
  year: 1964,
  artist: rolling_stones
)
Song.create!(
  title: "(I Can't Get No) Satisfaction",
  year: 1965,
  artist: rolling_stones
)
Song.create!(
  title: "Paint It Black",
  year: 1966,
  artist: rolling_stones
)
Song.create!(
  title: "Ruby Tuesday",
  year: 1967,
  artist: rolling_stones
)
Song.create!(
  title: "Wild Horses",
  year: 1971,
  artist: rolling_stones
)
Song.create!(
  title: "It's Only Rock 'n Roll (But I Like It)",
  year: 1974,
  artist: rolling_stones
)
Song.create!(
  title: "Jumpin' Jack Flash",
  year: 1968,
  artist: rolling_stones
)
Song.create!(
  title: "Brown Sugar",
  year: 1971,
  artist: rolling_stones
)
# Songs:dire_straits
Song.create!(
  title: "Industrial Disease",
  year: 1982,
  artist: dire_straits
)
Song.create!(
  title: "Private Investigations",
  year: 1982,
  artist: dire_straits
)
Song.create!(
  title: "Twisting by the Pool",
  year: 1983,
  artist: dire_straits
)
Song.create!(
  title: "Walk of Life",
  year: 1985,
  artist: dire_straits
)
Song.create!(
  title: "Romeo and Juliet",
  year: 1980,
  artist: dire_straits
)
Song.create!(
  title: "Tunnel of Love",
  year: 1980,
  artist: dire_straits
)
Song.create!(
  title: "Money for Nothing",
  year: 1985,
  artist: dire_straits
)
Song.create!(
  title: "Sultans of Swing",
  year: 1978,
  artist: dire_straits
)
# Songs:bob_dylan
Song.create!(
  title: "Like a Rolling Stone",
  year: 1965,
  artist: bob_dylan
)
Song.create!(
  title: "Blowin in The Wind",
  year: 1963,
  artist: bob_dylan
)
Song.create!(
  title: "Mr. Tambourine Man",
  year: 1965,
  artist: bob_dylan
)
Song.create!(
  title: "Knockin' on Heaven's Door",
  year: 1973,
  artist: bob_dylan
)
Song.create!(
  title: "I Shall Be Released",
  year: 1968,
  artist: bob_dylan
)
Song.create!(
  title: "Ballad of a Thin Man",
  year: 1965,
  artist: bob_dylan
)
Song.create!(
  title: "Just Like a Woman",
  year: 1966,
  artist: bob_dylan
)
Song.create!(
  title: "Tangled Up in Blue",
  year: 1975,
  artist: bob_dylan
)
