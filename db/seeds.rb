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
  president.save!
end
puts "end seeding"
