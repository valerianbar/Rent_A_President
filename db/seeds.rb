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

# president8 = President.new(
#   name: "Kim Jong",
#   description: "Kimmy is an experienced tennis teacher. Roger, stay away from him ! Or he'll send a massive bomb at your Head.",
#   user: user
# )
# file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/kim-jong-tennisman_rb0wnj.jpg")
# president8.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
# president8.save!
