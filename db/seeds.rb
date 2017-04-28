# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Region.create([
  { name: 'Middle East & Africa' },
  { name: 'Latin America' },
  { name: 'Asia Pacific' },
  { name: 'Europe' },
])

Province.create([
  { name: 'Bahrain', region_id: 1 },
  { name: 'Brunei', region_id: 1 },
  { name: 'Cyprus', region_id: 1 },
  { name: 'Egypt', region_id: 1 },
  { name: 'Israel', region_id: 1 },
  { name: 'Argentina', region_id: 2 },
  { name: 'Bolivia', region_id: 2 },
  { name: 'Brazil', region_id: 2 },
  { name: 'Chile', region_id: 2 },
  { name: 'Australia', region_id: 3 },
  { name: 'China', region_id: 3 },
  { name: 'Fiji Islands', region_id: 3 },
  { name: 'Hong Kong', region_id: 3 },
])