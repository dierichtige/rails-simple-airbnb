# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Alpenpension Bergidyll (DE Schönau a. Königssee)',
  address: 'Schönau a. Königssee',
  description: 'Herzlich Willkommen im Alpen-Nationalpark Berchtesgaden. Unsere Alpenpension liegt umgeben von einer traumhaften Bergkette in der Schönau a. Königssee. Unser Haus verfügt über 11 Zimmer und einer Ferienwohnung. Komfortabel und modern ausgestattet sorgen sie für einen erholsamen Urlaub.',
  price_per_night: 150,
  number_of_guests: 2
)

Flat.create!(
  name: 'Schwedenhaus Eichenberg',
  address: 'Sonnenhalde 8, 6911 Eichenberg, Österreich',
  description: 'In ruhiger Lage in Eichenberg am Waldrand liegt das Schwedenhaus Eichenberg, 8 km von Bregenz und Lindau entfernt. WLAN und Parkplätze stehen kostenfrei zur Verfügung.

  Das Doppelzimmer bietet direkten Zugang zum Garten und zum Wald. In der Suite erwartet Sie eine Dachterrasse mit Aussicht auf den Bodensee.',
  price_per_night: 60,
  number_of_guests: 4
)

Flat.create!(
  name: 'Talstation Kabine 20 / Innenstadt, 2 Schlafzimmer, Terrasse',
  address: '32 Oberstraße Talstation Kabine 20, DG, 65385 Rüdesheim am Rhein',
  description: 'Das Apartment verfügt über 2 Schlafzimmer, 1 Bad, Bettwäsche, Handtücher, einen Flachbild-Sat-TV, einen Essbereich, eine voll ausgestattete Küche und eine Terrasse mit Stadtblick.

  In der Nähe des Apartments können Sie wandern oder auf der Sonnenterrasse entspannen.',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'Ferienwohnung in Rüdesheim am Rhein',
  address: 'ulhauser Straße 16, 65385 Rüdesheim am Rhein, Deutschland',
  description: 'Das Apartment verfügt über 1 Schlafzimmer, einen TV, eine ausgestattete Küche mit einer Mikrowelle und einem Kühlschrank, eine Waschmaschine und 1 Bad mit einer Dusche. Handtücher und Bettwäsche werden im Apartment gestellt.

  Die Drosselgasse liegt 3,5 km vom Apartment entfernt. Der nächstgelegene Flughafen ist der 44 km von der Ferienwohnung - a67931 entfernte Flughafen Frankfurt-Hahn',
  price_per_night: 85,
  number_of_guests: 2
)

puts "Finished!"
