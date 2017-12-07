# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Character.destroy_all

1000.times do
  Character.create(
    name: Faker::Name.name,
    movie: Faker::Book.title,
    quote: Faker::MostInterestingManInTheWorld.quote,
    actor: Faker::Name.name,
    year: rand(30) + 1985
  )
end
