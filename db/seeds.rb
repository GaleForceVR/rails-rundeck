# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create!(  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  username: Faker::Internet.user_name,
                  email: Faker::Internet.email,
                  password: "password"                    )
end


30.times do
  Route.create!(  distance: rand(100..1000),
                  location: Faker::Address.street_name    )
end

50.times do 
  Effort.create!(   user_id: rand(1..10),
                    route_id: rand(1..30),
                    total_time: rand(35_000..1_785_000), 
                    total_distance: [100, 250, 300, 300, 350, 300, 350, 150, 400, 450, 500, 600, 700, 800, 900, 1000].sample )
end

100.times do
  Split.create!(    effort_id: rand(1..50),
                    distance: [100, 100, 100, 100, 95, 73, 100, 100].sample,
                    time: rand(30_000..72_000)            )
end
