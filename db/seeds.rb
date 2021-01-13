# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    Band.create(band_name:Faker::Music.band)
end

50.times do
    Instrument.create(instrument_name:Faker::Music.instrument,
                      band_id:Band.all.sample.id)
end