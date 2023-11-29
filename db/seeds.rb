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

president = President.new(
  name: "François Hollande",
  description: "François'll make your garden glow with new flowers. Always more flowers, always younger.",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/hollande_vyijxq.jpg")
president.photos.attach([{io: file, filename: "hollande.jpg", content_type: "image/jpg"}])
president.save!


president = President.new(
  name: "Emmanuel Macron",
  description: "Emmanuel is a digital coach, he'll help you turn on off your computer, load your phone and so",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/macron-coach-of-nothing_iihfq4.webp")
president.photos.attach([{io: file, filename: "macron.jpg", content_type: "image/jpg"}])
president.save!


president3 = President.new(
  name: "Vladimir Poutin",
  description: "Vlad'll show you how to catch big fishs. Highly recommended to navigate around tumultous seas.",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/9664510lpw-9664519-article-vladimir-poutine-en-vacances-aout-2017-jpg_4470149_1250x625_mhbt9g.jpg")
president3.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president3.save!


president4 = President.new(
  name: "Jacques Chirac",
  description: "Jacques'll teach you how to drink a hundred beers in a row and still stand up. Useful for boring weddings.",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/chirac_p9xl9c.jpg")
president4.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president4.save!


president5 = President.new(
  name: "Barack Obama",
  description: "Barack'll cut your hair in a delightful manner. I recommended him to your mother-in-law and it made her move overseas. Goal achieved",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252943/obama-hairdresser_arogl1.jpg")
president5.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president5.save!


president6 = President.new(
  name: "Marine Le Pen",
  description: "Marine hates some people but she loves all the animals. She'll take care of your dog, cat, hamster, whatever.",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252943/marine-catsitter_qswsbd.webp")
president6.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president6.save!

president7 = President.new(
  name: "Valérie Pécresse",
  description: "Valérie really needs your money that makes her a firce opponent. She'll help you beat up your enemies in a blinck. Or get a steal ass in a fortnight.",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252944/XVM7447195c-9ee6-11e8-aa3d-51d567290830_jvkgtu.webp")
president7.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president7.save!

president8 = President.new(
  name: "Kim Jong",
  description: "Kimmy is an experienced tennis teacher. Roger, stay away from him ! Or he'll send a massive bomb at your Head.",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/kim-jong-tennisman_rb0wnj.jpg")
president8.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president8.save!

president9 = President.new(
  name: "Bill Clinton",
  description: "Billy will cater your private or office events",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/Bill-clinton-chief_dkvdsg.jpg")
president9.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president9.save!

president10 = President.new(
  name: "Donald Trump",
  description: "Donnie'll sweep your house. Also handy if you hand up in jail. He'll come and visit you on top of cleaning",
  user: user
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701189032/43258920_spouiu.jpg")
president10.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president10.save!

