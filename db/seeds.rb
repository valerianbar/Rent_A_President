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


maelie = User.new(
  first_name: "Maelie",
  last_name: "Poussier",
  email: "maelie@maelie.com",
  password: "Maelie"
)
maelie.save!


florent = User.new(
  first_name: "Florent",
  last_name: "Guilbaud",
  email: "florent@florent.com",
  password: "Florent"
)
florent.save!


florine = User.new(
  first_name: "Florine",
  last_name: "Humbert",
  email: "florine@florine.com",
  password: "Florine"
)
florine.save!


president0 = President.new(
  name: "François Hollande",
  description: "François'll make your garden glow with new flowers. Always more flowers, always younger. Freshness garanteed.",
  user: maelie,
  address: "Rouen"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/hollande_vyijxq.jpg")
president0.photos.attach([{io: file, filename: "hollande.jpg", content_type: "image/jpg"}])
president0.save!


president = President.new(
  name: "Emmanuel Macron",
  description: "Emmanuel is a digital coach for youtubers and influencers. He'll help you with your online carrier with the help of his contacts in the industry.",
  user: maelie,
  address: "Paris"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/macron-coach-of-nothing_iihfq4.webp")
president.photos.attach([{io: file, filename: "macron.jpg", content_type: "image/jpg"}])
president.save!

president1 = President.new(
  name: "Angela Merkel",
  description: "Angela'll help you train your birds so they can sing the national anthem. She's also a good cook and will make you some delicious german food.",
  user: maelie,
  address: "Berlin"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701425002/merkel_ivmlv4.webp")
president.photos.attach([{io: file, filename: "merkel.jpg", content_type: "image/jpg"}])
president1.save!

president2 = President.new(
  name: "Jean-Luc Melenchon",
  description: "Jean-Luc is a born actor. He'll teach you how to fake your emotions and how to make people believe you're a good person.",
  user: florent,
  address: "Mexico"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701425002/merkel_ivmlv4.webp")
president2.photos.attach([{io: file, filename: "melenchon.jpg", content_type: "image/jpg"}])
president2.save!


president3 = President.new(
  name: "Vladimir Poutine",
  description: "Vlad'll show you how to catch big fishs. Highly recommended to navigate around tumultous seas. He's also a good hunter and will help you to get rid of your enemies.",
  user: florent,
  address: "Moscow"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/9664510lpw-9664519-article-vladimir-poutine-en-vacances-aout-2017-jpg_4470149_1250x625_mhbt9g.jpg")
president3.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president3.save!

president4 = President.new(
  name: "Joe Biden",
  description: "Joe is an experienced male nurse. He'll teach you how to put on a mask and how to wash your hands properly.",
  user: florent,
  address: "Mexico"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701424953/biden_lw8evt.webp")
president.photos.attach([{io: file, filename: "biden.jpg", content_type: "image/jpg"}])
president2.save!


president5 = President.new(
  name: "Barack Obama",
  description: "Barack'll cut your hair in a delightful manner. I recommended him to your mother-in-law and it made her move overseas. Goal achieved !",
  user: florent,
  address: "Honolulu"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252943/obama-hairdresser_arogl1.jpg")
president5.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president5.save!


president6 = President.new(
  name: "Marine Le Pen",
  description: "Marine hates some people but she take care of your animals. She'll take care of your dog, cat, hamster, whatever with love.",
  user: florent,
  address: "Marseille"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252943/marine-catsitter_qswsbd.webp")
president6.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president6.save!

president7 = President.new(
  name: "Valérie Pécresse",
  description: "Valérie really needs your money that makes her a fierce opponent. She'll help you beat up your enemies in a blinck. Or get a steal ass in a fortnight.",
  user: florine,
  address: "Rio de Janeiro"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252944/XVM7447195c-9ee6-11e8-aa3d-51d567290830_jvkgtu.webp")
president7.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president7.save!

president8 = President.new(
  name: "Kim Jong",
  description: "Kimmy is an experienced tennis teacher. Roger, stay away from him ! Or he'll send a massive bomb at your Head.",
  user: florine,
  address: "Pyongyang"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/kim-jong-tennisman_rb0wnj.jpg")
president8.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president8.save!

president9 = President.new(
  name: "Bill Clinton",
  description: "Billy is a good cook, he organizes your private events. He loves to cook vegetables and burgers.",
  user: florine,
  address: "Arkansas"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701252942/Bill-clinton-chief_dkvdsg.jpg")
president9.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president9.save!

president10 = President.new(
  name: "Donald Trump",
  description: "Donnie'll sweep your house. Also handy if you hand up in jail. He'll come and visit you on top of cleaning.",
  user: maelie,
  address: "New York"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701189032/43258920_spouiu.jpg")
president10.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president10.save!

president11 = President.new(
  name: "Philippe Poutou",
  description: "Philippe is a junior esthetician. No more hairs on your legs, no more pimples on your face. He's also a great tattoo artist.",
  user: florine,
  address: "Bordeaux"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701424993/poutou_seisjg.webp")
president11.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president11.save!

president12 = President.new(
  name: "Jean Lassalle",
  description: "Jean is an experienced riding instructor. He'll teach you to rodeo like a pro. Jumping over fences, riding horses, he'll make you a real cowboy.",
  user: maelie,
  address: "Bordeaux"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701424981/lassalle_qix80g.webp")
president12.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
president12.save!


booking = Booking.new(
  president: president0,
  user: maelie,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking.save!


booking2 = Booking.new(
  president: president7,
  user: maelie,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "pending"
)
booking2.save!


booking3 = Booking.new(
  president: president5,
  user: florent,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "declined"
)
booking3.save!


review = Review.new(
  president: president5,
  rating: 2,
  comment: "Barack totally messed up my hair. I look like a potato.",
  user: maelie
)
review.save!

review2 = Review.new(
  president: president5,
  rating: 5,
  comment: "Barack made me look like a potato. I love it !",
  user: maelie
)
review2.save!

review3 = Review.new(
  president: president0,
  rating: 5,
  comment: "François is a great gardener. He made my garden great again !",
  user: maelie
)
review3.save!

review4 = Review.new(
  president: president2,
  rating: 5,
  comment: "Emmanuel is a great coach. Now I'm a famous youtuber !",
  user: florine
)
review4.save!

review5 = Review.new(
  president: president6,
  rating: 2,
  comment: "Marine is an awful catsitter. She killed my cat !",
  user: florine
)
review5.save!

review6 = Review.new(
  president: president9,
  rating: 5,
  comment: "Bill is a great cook. He made me a delicious burger !",
  user: florine
)
review6.save!
