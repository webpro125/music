# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Region.create([
#   { name: 'Middle East & Africa' },
#   { name: 'Latin America' },
#   { name: 'Asia Pacific' },
#   { name: 'Europe' },
# ])
#
# Province.create([
#   { name: 'Bahrain', region_id: 1 },
#   { name: 'Brunei', region_id: 1 },
#   { name: 'Cyprus', region_id: 1 },
#   { name: 'Egypt', region_id: 1 },
#   { name: 'Israel', region_id: 1 },
#   { name: 'Argentina', region_id: 2 },
#   { name: 'Bolivia', region_id: 2 },
#   { name: 'Brazil', region_id: 2 },
#   { name: 'Chile', region_id: 2 },
#   { name: 'Australia', region_id: 3 },
#   { name: 'China', region_id: 3 },
#   { name: 'Fiji Islands', region_id: 3 },
#   { name: 'Hong Kong', region_id: 3 },
# ])
Genre.create([
  {name: 'Alternative'},
  {name: 'Blues'},
  {name: 'Classical'},
  {name: 'Country'},
  {name: 'Easy Listening EDM'},
])
SubGenre.create([
  {name: 'Art Punk', genre_id: 1},
  {name: 'Alternative Rock', genre_id: 1},
  {name: 'College Rock', genre_id: 1},
  {name: 'Crossover Thrash', genre_id: 1},
  {name: 'Crust Punk(thx Haug)', genre_id: 1},
  {name: 'Acoustic Blues', genre_id: 2},
  {name: 'Chicago Blues', genre_id: 2},
  {name: 'Classic Blues', genre_id: 2},
  {name: 'Contemporary Blues', genre_id: 2},
  {name: 'Avant-Garde', genre_id: 3},
  {name: 'Baroque', genre_id: 3},
  {name: 'Chamber Music', genre_id: 3},
  {name: 'chant', genre_id: 3},
  {name: 'Choral', genre_id: 3},
  {name: 'Alternative Country', genre_id: 4},
  {name: 'Americana', genre_id: 4},
  {name: 'Bluegrass', genre_id: 4},
  {name: 'Contemporary Bluegrass', genre_id: 4},
  {name: 'Contemporary Country', genre_id: 4},
  {name: 'Country Gospel', genre_id: 4},
])