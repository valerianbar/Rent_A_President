require "open-uri"


Booking.destroy_all
President.destroy_all
User.destroy_all

puts "start seeding"

user = User.new(
  first_name: "Test1",
  last_name: "test1",
  email: "test@test.com",
  password: "test123456"
)
user.save!

user2 = User.new(
  first_name: "Test2",
  last_name: "test2",
  email: "test2@test.com",
  password: "test1234567"
)
user2.save!


president0 = President.new(
  name: "François Hollande",
  description: "François'll make your garden glow with new flowers. Always more flowers, always younger.",
  user: user,
  address: "Paris"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/hollande_vyijxq.jpg")
president0.photos.attach([{io: file, filename: "hollande.jpg", content_type: "image/jpg"}])
president0.save!


president = President.new(
  name: "Emmanuel Macron",
  description: "Emmanuel is a digital coach, he'll help you turn on off your computer, load your phone and so.",
  user: user,
  address: "Paris"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/macron-coach-of-nothing_iihfq4.webp")
president.photos.attach([{io: file, filename: "macron.jpg", content_type: "image/jpg"}])
president.save!


president3 = President.new(
  name: "Vladimir Poutine",
  description: "Vlad'll show you how to catch big fishs. Highly recommended to navigate around tumultous seas.",
  user: user,
  address: "Moscow"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/9664510lpw-9664519-article-vladimir-poutine-en-vacances-aout-2017-jpg_4470149_1250x625_mhbt9g.jpg")
president3.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president3.save!


president4 = President.new(
  name: "Jacques Chirac",
  description: "Jacques'll teach you how to drink a hundred beers in a row and still stand up. Useful for boring weddings.",
  user: user,
  address: "Paris"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/chirac_p9xl9c.jpg")
president4.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president4.save!


president5 = President.new(
  name: "Barack Obama",
  description: "Barack'll cut your hair in a delightful manner. I recommended him to your mother-in-law and it made her move overseas. Goal achieved.",
  user: user,
  address: "Washington"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252943/obama-hairdresser_arogl1.jpg")
president5.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president5.save!


president6 = President.new(
  name: "Marine Le Pen",
  description: "Marine hates some people but she loves all the animals. She'll take care of your dog, cat, hamster, whatever.",
  user: user,
  address: "Paris"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252943/marine-catsitter_qswsbd.webp")
president6.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president6.save!

president7 = President.new(
  name: "Valérie Pécresse",
  description: "Valérie really needs your money that makes her a firce opponent. She'll help you beat up your enemies in a blinck. Or get a steal ass in a fortnight.",
  user: user,
  address: "Paris"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252944/XVM7447195c-9ee6-11e8-aa3d-51d567290830_jvkgtu.webp")
president7.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president7.save!

president8 = President.new(
  name: "Kim Jong",
  description: "Kimmy is an experienced tennis teacher. Roger, stay away from him ! Or he'll send a massive bomb at your Head.",
  user: user,
  address: "Pyongyang"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/kim-jong-tennisman_rb0wnj.jpg")
president8.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president8.save!

president9 = President.new(
  name: "Bill Clinton",
  description: "Billy is a good cook, he organizes your private or professional events with love.",
  user: user,
  address: "Washington"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/Bill-clinton-chief_dkvdsg.jpg")
president9.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president9.save!

president10 = President.new(
  name: "Donald Trump",
  description: "Donnie'll sweep your house. Also handy if you hand up in jail. He'll come and visit you on top of cleaning.",
  user: user,
  address: "Washington"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701189032/43258920_spouiu.jpg")
president10.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president10.save!


booking = Booking.new(
  president: president0,
  user: user2,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking.save!

booking2 = Booking.new(
  president: president7,
  user: user2,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "pending"
)
booking2.save!


booking3 = Booking.new(
  president: president5,
  user: user2,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "declined"
)
booking3.save!
