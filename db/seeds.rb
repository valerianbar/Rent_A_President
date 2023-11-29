require "open-uri"

President.destroy_all
User.destroy_all

puts "start seeding"

user = User.create!(
  first_name: "Test1",
  last_name: "test1",
  email: "test@test.com",
  password: "test123456"
)





10.times do
  president = President.new(
    name: Faker::FunnyName.name,
    description: Faker::FunnyName.name,
    user: user
  )
  file = URI.open("https://static.lpnt.fr/images/2014/01/19/par-2358707-jpg_2028689_660x287.JPG")
  president.photos.attach([{io: file, filename: "nes.png", content_type: "image/png"}])
  president.save!
end
puts "end seeding"
