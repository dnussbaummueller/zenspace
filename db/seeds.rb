
# Destroying the database
puts "Destroying the database..."
Booking.destroy_all
YogaClass.destroy_all
YogaStudioTeacher.destroy_all
Review.destroy_all
YogaStudio.destroy_all
Teacher.destroy_all
User.destroy_all

# Creating users
puts "Creating users..."

user1 = User.create!(
  email: "user1@gmail.com",
  password: "123456"
)

user2 = User.create!(
  email: "user2@gmail.com",
  password: "123456"
)

user3 = User.create!(
  email: "user3@gmail.com",
  password: "123456"
)

# Creating teachers
puts "Creating teachers..."

teacher1 = Teacher.create!(
  name: "Maya Pradhan",
  description: "Maya is a certified yoga instructor with over 5 years of teaching experience.
  She believes in creating a nurturing environment where students can deepen their yoga practice and connect with their breath.
  In addition to teaching traditional yoga classes, Maya also offers workshops on mindfulness and meditation.",
  user: user1
)

file = URI.open("https://images.pexels.com/photos/3822906/pexels-photo-3822906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher1.save!

teacher2 = Teacher.create!(
  name: "Rohit Chaudhary",
  description: "Rohit is a passionate yoga instructor who has been teaching for over a decade.
  His classes are known for their challenging yet accessible sequences that cater to students of all levels.
  Rohit is also a certified Ayurvedic practitioner and often incorporates Ayurvedic principles into his classes.",
  user: user1
)

file = URI.open("https://images.pexels.com/photos/6454159/pexels-photo-6454159.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher2.save!

teacher3 = Teacher.create!(
  name: "Aisha Khan",
  description: "Aisha is a dedicated yoga instructor who is committed to helping students achieve their goals.
  She specializes in teaching restorative yoga and works with clients who are recovering from injuries or dealing with chronic pain.
  Aisha's classes are gentle and calming, with an emphasis on mindfulness and self-care.",
  user: user2
)

file = URI.open("https://images.pexels.com/photos/7480045/pexels-photo-7480045.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher3.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher3.save!

teacher4 = Teacher.create!(
  name: "Kai Wong",
  description: "Kai Wong is a dynamic yoga instructor with a background in martial arts.
  His classes are infused with energy and vitality, and he encourages students to explore the limits of their physical abilities.
  Kai also offers workshops on inversions and arm balances for students who want to take their practice to the next level.",
  user: user3
)

file = URI.open("https://images.pexels.com/photos/7241488/pexels-photo-7241488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher4.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher4.save!

teacher5 = Teacher.create!(
  name: "Shreya Sharma",
  description: "Shreya is a compassionate yoga instructor who believes in the power of yoga to heal both the body and the mind.
  She specializes in teaching yoga for anxiety and depression, and works with clients to develop personalized yoga practices that can support their mental health.
  Shreya's classes are gentle and nurturing, with an emphasis on self-acceptance and self-care.",
  user: user3
)

file = URI.open("https://images.pexels.com/photos/8032834/pexels-photo-8032834.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher5.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher5.save!

teacher6 = Teacher.create!(
  name: "Jake Anderson",
  description: "Jake Anderson is a versatile yoga instructor who teaches a wide range of styles, from vinyasa flow to yin yoga.
  He believes that yoga is for everyone, and works with students of all ages and abilities to create personalized practices that suit their needs.
  In addition to teaching, Jake is also a trained massage therapist and often incorporates massage techniques into his classes.",
  user: user1
)

file = URI.open("https://images.pexels.com/photos/4057839/pexels-photo-4057839.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher6.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher6.save!

teacher7 = Teacher.create!(
  name: "Amara Singh",
  description: "Amara Singh is a dedicated yoga instructor who specializes in teaching prenatal yoga.
  She believes that yoga can be a valuable tool for expectant mothers, helping them to stay active and connected to their bodies throughout pregnancy.
  Amara's classes are gentle and nurturing, with an emphasis on breathing techniques and relaxation.",
  user: user2
)

file = URI.open("https://images.pexels.com/photos/2035066/pexels-photo-2035066.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher7.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher7.save!

teacher8 = Teacher.create!(
  name: "Leo Brown",
  description: "Leo is an experienced yoga instructor who has studied yoga in India and the US.
  He specializes in teaching traditional hatha yoga, and his classes focus on the integration of mind, body, and breath.
  Leo also offers workshops on the philosophy and history of yoga for students who want to deepen their understanding of the practice.",
  user: user1
)

file = URI.open("https://images.pexels.com/photos/3759657/pexels-photo-3759657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher8.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher8.save!

teacher9 = Teacher.create!(
  name: "Mira Patel",
  description: "Mira is a dynamic yoga instructor who combines elements of dance and yoga in her classes.
  She believes that movement and expression are an integral part of the yoga practice, and encourages students to find their own unique style.
  Mira's classes are playful and creative, with an emphasis on joy and self-expression.",
  user: user2
)

file = URI.open("https://images.pexels.com/photos/4324101/pexels-photo-4324101.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
teacher9.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher9.save!

teacher10 = Teacher.create!(
  name: "Anand Gupta",
  description: "Anand is a passionate yoga instructor who specializes in teaching yoga for athletes.
  He believes that yoga can be a valuable tool for improving athletic performance and reducing the risk of injury.
  Anand's classes are challenging and dynamic, with an emphasis on strength, flexibility, and balance.",
  user: user3
)

file = URI.open("https://images.unsplash.com/photo-1566501206188-5dd0cf160a0e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
teacher10.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher10.save!

# Creating Yoga studios
puts "Creating yoga studios..."

yoga_studio1 = YogaStudio.create!(
  name: "Mahalaya Yoga",
  address: "Boxhagener Str. 77, 10245 Berlin",
  description: "Mahalaya means 'big temple' and is a heart place for yoga, a sacred space for you, where you can be and experience your salvation.
  After a complete renovation, the listed halls of the Schreibfeder Höfe house a hot yoga room for all the sweaty activities and another non-hot yoga room for relaxation,
   workshops and training courses. An open and cozy lobby invites you to arrive and linger. We have separate changing rooms with showers and a shop with yoga clothing
   (leggings, shorts, tops), yoga mats, yoga towels and everything a yoga heart desires.",
  user: user1
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
  yoga_studio1.photos.attach(io: file, filename: "#{yoga_studio1.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
  yoga_studio1.photos.attach(io: file, filename: "#{yoga_studio1.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
  yoga_studio1.photos.attach(io: file, filename: "#{yoga_studio1.name}#{rand(1..100)}.png", content_type: "image/png")

  yoga_studio1.save!

yoga_studio2 = YogaStudio.create!(
  name: "Hot Yoga Berlin",
  address: "Knobelsdorffstraße 34, 14059 Berlin",
  description: "Yoga & More creates the connection between yoga, body and energy work.
  In lovingly and creatively designed rooms that are available for yoga courses, body and energy treatments, Ayurveda, events and training.
  A place of the heart, where people meet who have one thing in common: an interest in encountering life in all its fullness.",
  user: user2
)

file = URI.open("https://luxurylondon.co.uk/wp-content/uploads/2022/08/bamford-yoga-studio-london.jpg")
  yoga_studio2.photos.attach(io: file, filename: "#{yoga_studio2.name}#{rand(1..100)}.png", content_type: "image/png")
  file = URI.open("https://luxurylondon.co.uk/wp-content/uploads/2022/08/xl-hd-29-1465x1099-c-center.jpg")
  yoga_studio2.photos.attach(io: file, filename: "#{yoga_studio2.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://images.squarespace-cdn.com/content/v1/589de1e1f7e0ab05b686adbe/1612882990743-G4CUF7PVOLRLN15GANWN/20_12_02_Bamford_Capture_0135.jpg")
  yoga_studio2.photos.attach(io: file, filename: "#{yoga_studio2.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio2.save!

yoga_studio3 = YogaStudio.create!(
  name: "Enso Yoga",
  address: "Krausenstraße 28, 10117 Berlin",
  description: "The studio is located in the rooms of the old post office building, so the conversion to a spacious and light-flooded studio in a simple industrial design was correspondingly complex.
  You step out of the hustle and bustle of the street straight into the soothing tranquility of the studio. The separate changing rooms for women and men have showers, hair dryers and are big enough for you to change your clothes in a relaxed manner.
  In the quiet, peaceful massage room you can let yourself be pampered with a soothing oil massage. A cozy, open seating area invites you to relax after yoga",
  user: user1
)

file = URI.open("https://media.tatler.com/photos/6141da906f84b7629deaadfa/16:9/w_1280,c_limit/mortimer-house.jpg")
  yoga_studio3.photos.attach(io: file, filename: "#{yoga_studio3.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.mortimerhouse.com/propeller/uploads/sites/3/2021/07/fullsizeoutput_4516-1400x788.jpeg")
  yoga_studio3.photos.attach(io: file, filename: "#{yoga_studio3.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.mortimerhouse.com/propeller/uploads/sites/3/2021/07/photo0086-scaled.jpg")
  yoga_studio3.photos.attach(io: file, filename: "#{yoga_studio3.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio3.save!

yoga_studio4 = YogaStudio.create!(
  name: "Jivamukti Yoga School",
  address: "Glogauer Str. 19, 10999 Berlin",
  description: "In February 2022 we opened a second location, also in Kreuzberg: The studio is on the ground floor of a coach house opposite the famous Markthalle 9, north of the Görlitzer Bahnhof underground station.
  In addition to a 120 sqm yoga room with underfloor heating, there is a small boutique with drinks and yoga accessories, a changing room and sufficient toilets.",
  user: user1
)

file = URI.open("https://images.lifestyleasia.com/wp-content/uploads/sites/2/2020/09/23104002/Flowga_Home-Page-1600x900.jpg")
  yoga_studio4.photos.attach(io: file, filename: "#{yoga_studio4.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://images.squarespace-cdn.com/content/v1/5d82d3eb84358e0d7028b4ed/1586833292315-T9DHC9Q41N6TKNZW8BCV/1+copy.jpeg")
  yoga_studio4.photos.attach(io: file, filename: "#{yoga_studio4.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://images.squarespace-cdn.com/content/v1/5d82d3eb84358e0d7028b4ed/1586833386422-K99W1I766Y43DZFU557R/IMG_6040+copy.jpg")
  yoga_studio4.photos.attach(io: file, filename: "#{yoga_studio4.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio4.save!

yoga_studio5 = YogaStudio.create!(
  name: "Lagoa Yoga",
  address: "Uhlandstraße 20, 10623 Berlin",
  description: "Lagoa Yoga not only changes your body, but it also changes your life.
  With inspiring and dedicated teachers, you can let go of the demands of everyday life, find physical challenge and soothing calm.
  More and more Yoga participants leave their Yoga class with a smile on their face and a more cheerful attitude towards life.",
  user: user3
)

file = URI.open("https://static.thehoneycombers.com/wp-content/uploads/sites/4/2014/06/The-Practice-Yoga-Studio-Canggu-Bali-2.jpg")
  yoga_studio5.photos.attach(io: file, filename: "#{yoga_studio5.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.uniqueretreats.com/wp-content/uploads/2018/04/radiantly-alive.jpg")
  yoga_studio5.photos.attach(io: file, filename: "#{yoga_studio5.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://balipedia.com/wp-content/uploads/2020/12/The-Practice.jpg")
  yoga_studio5.photos.attach(io: file, filename: "#{yoga_studio5.name}#{rand(1..100)}.png", content_type: "image/png")


yoga_studio5.save!

yoga_studio6 = YogaStudio.create!(
  name: "Spirit Yoga Charlottenburg",
  address: "Goethestraße 2-3, 10623 Berlin",
  description: "The Spirit Yoga Studio Charlottenburg is located where the district is most beautiful: in the neighborhood of long-established shops and galleries,
  between the University of the Arts and the popular Savignyplatz. The spacious and light-flooded practice room is quiet and peaceful due to its location in the backyard of the atmospheric former post office.
  Small cafés and boutiques invite you to linger after the yoga class in the side streets of the quarter. The clocks don't go that fast here, people know each other and like to take the time for a little chat on the street.",
  user: user2
)

file = URI.open("https://assets.website-files.com/5f7533fe3ad0a039ce5f1006/61e5bdcb3a533b35dc58292d_sol-yoga-fullres-4%20(1).jpg")
  yoga_studio6.photos.attach(io: file, filename: "#{yoga_studio6.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://assets.website-files.com/5f7533fe3ad0a039ce5f1006/5f81cf31a156d57dc408dda6_AzUvKS-U.jpeg")
  yoga_studio6.photos.attach(io: file, filename: "#{yoga_studio6.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("http://solyogaflorida.com/wp-content/uploads/2018/05/studio-hero-v2.jpg")
  yoga_studio6.photos.attach(io: file, filename: "#{yoga_studio6.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio6.save!

yoga_studio7 = YogaStudio.create!(
  name: "Yogatribe Berlin Mitte",
  address: "Große Hamburger Str. 19a, 10178 Berlin",
  description: "Yogatribe is the Anusara Yoga Studio in the heart of Berlin, at Hackescher Markt.",
  user: user3
)

file = URI.open("https://prajnayoga.com/wp-content/uploads/2022/08/prajna-studio-1518x1502.jpg")
  yoga_studio7.photos.attach(io: file, filename: "#{yoga_studio7.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://cdn.fs.teachablecdn.com/Wd72lSsvRFKD93jp4fUC")
  yoga_studio7.photos.attach(io: file, filename: "#{yoga_studio7.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://prajnayoga.com/wp-content/uploads/2020/04/20181028_Anatomy_Of_The_Vayus_DSC0254-1-scaled-1.jpg")
  yoga_studio7.photos.attach(io: file, filename: "#{yoga_studio7.name}#{rand(1..100)}.png", content_type: "image/png")


yoga_studio7.save!

yoga_studio8 = YogaStudio.create!(
  name: "YOGA SKY",
  address: "Am Tempelhofer Berg 7d, 10965 Berlin",
  description: "On a generous 500 square meters, we offer you a place to develop yourself and to experience your freedom in two large studios,
  four therapy rooms and an open lounge - Experience Freedom.",
  user: user1
)

file = URI.open("https://concreteplayground.com/content/uploads/2017/07/Yoga213-image_simonshiffphotographer.jpg")
  yoga_studio8.photos.attach(io: file, filename: "#{yoga_studio8.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://cdn.concreteplayground.com/content/uploads/2015/11/Yoga-213-Hip-Hop-Richmond-Melbourne-01-1920x1080.jpeg")
  yoga_studio8.photos.attach(io: file, filename: "#{yoga_studio8.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("http://amodernwayfarer.files.wordpress.com/2013/05/yoga-123-4.jpg")
  yoga_studio8.photos.attach(io: file, filename: "#{yoga_studio8.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio8.save!

yoga_studio9 = YogaStudio.create!(
  name: "Kalaa Yoga Berlin",
  address: "Lychener Str. 47, 10437 Berlin",
  description: "KALAA Yoga Berlin is a yoga school in Prenzlauer Berg, right on Helmholzplatz.
  Our studio is located in the back house of a historical Berlin building, in a former printing company with a view into the greenery.",
  user: user2
)

file = URI.open("https://img.theculturetrip.com/wp-content/uploads/2017/04/003-133_bear.jpg")
  yoga_studio9.photos.attach(io: file, filename: "#{yoga_studio9.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/ec/f0/e6/surf-spirit.jpg?w=1400&h=-1&s=1")
  yoga_studio9.photos.attach(io: file, filename: "#{yoga_studio9.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/ec/f1/41/surf-spirit.jpg?w=1100&h=-1&s=1")
  yoga_studio9.photos.attach(io: file, filename: "#{yoga_studio9.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio9.save!

yoga_studio10 = YogaStudio.create!(
  name: "Element Yoga",
  address: "Pfuelstraße 5, 10997 Berlin",
  description: "The Element Yoga Institute is located in Berlin-Kreuzberg at the Schlesisches Tor with a view of the TV tower.
  Yoga classes, workshops, events and the presence dates of our training take place in our large, bright rooms.
  This is where our live streams are shot and the yoga videos for our online studio are produced.",
  user: user1
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/5bc9338d2727be3db78aefe5/1660213961233-ICKXITIKSE5VG83CQMKC/PowerLiving-12.jpg?format=2500w")
  yoga_studio10.photos.attach(io: file, filename: "#{yoga_studio10.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://images.squarespace-cdn.com/content/v1/5bc9338d2727be3db78aefe5/1660214392936-XNSWG4Y7I98FKL403TAS/PowerLiving-10.jpg")
  yoga_studio10.photos.attach(io: file, filename: "#{yoga_studio10.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://images.squarespace-cdn.com/content/v1/5bc9338d2727be3db78aefe5/2d2bfc7e-0d4a-4d32-ac80-a856d967279d/Communitea+%281%29.jpg")
  yoga_studio10.photos.attach(io: file, filename: "#{yoga_studio10.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio10.save!

yoga_studio11 = YogaStudio.create!(
  name: "Yoga Berlin",
  address: "Karl-Marx-Allee 34, 10243 Berlin",
  description: "Yoga Berlin is a yoga school in Berlin Friedrichshain.
  We offer a wide range of yoga classes, workshops and teacher trainings.
  Our yoga school is located in the heart of Friedrichshain, in the Karl-Marx-Allee 34, in the immediate vicinity of the Ostbahnhof.",
  user: user3
)

file = URI.open("https://assets.ad-magazin.de/photos/60f6f08a450f207d76792d9c/16:9/w_2560%2Cc_limit/OFvonSP16-minjpg.jpg")
  yoga_studio11.photos.attach(io: file, filename: "#{yoga_studio11.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://assets.ad-magazin.de/photos/60f6f08b0d2cf7083dc87494/master/w_1600,c_limit/_DSC0203-minjpg.jpg")
  yoga_studio11.photos.attach(io: file, filename: "#{yoga_studio11.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://assets.ad-magazin.de/photos/60f6f08acdf4ed0b7ede9110/master/w_1600,c_limit/_DSC0055-HDR-minjpg.jpg")
  yoga_studio11.photos.attach(io: file, filename: "#{yoga_studio11.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio11.save!

yoga_studio12 = YogaStudio.create!(
  name: "The Yoga Room",
  address: "Derfflingerstraße 7, 10785 Berlin",
  description: "The Yoga Room includes two yoga studios, a tea shop, and hosts a roster of events throughout the week.",
  user: user2
)

file = URI.open("https://static.dezeen.com/uploads/2020/02/space-between-yoga-studio-interiors-jordan-ralph-design-dublin_dezeen_hero-1.jpg")
  yoga_studio12.photos.attach(io: file, filename: "#{yoga_studio12.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://static.dezeen.com/uploads/2020/02/space-between-yoga-studio-interiors-jordan-ralph-design-dublin_dezeen_2364_col_19.jpg")
  yoga_studio12.photos.attach(io: file, filename: "#{yoga_studio12.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://static.dezeen.com/uploads/2020/02/space-between-yoga-studio-interiors-jordan-ralph-design-dublin_dezeen_2364_col_16.jpg")
  yoga_studio12.photos.attach(io: file, filename: "#{yoga_studio12.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio12.save!

yoga_studio13 = YogaStudio.create!(
  name: "Raumperle",
  address: "Emser Str. 69, 12051 Berlin",
  description: "Find your inner peace at our serene yoga studio, designed to nourish mind and body.",
  user: user1
)

file = URI.open("https://www.raumperle.de/fileadmin/Hamburg/Uid_744/HKS_Yogastudio_Aufmacher_Feb2019.jpg")
  yoga_studio13.photos.attach(io: file, filename: "#{yoga_studio13.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.raumperle.de/fileadmin/Hamburg/Uid_744/HKS_Yogastudio_GruppevonHinten.jpg")
  yoga_studio13.photos.attach(io: file, filename: "#{yoga_studio13.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.raumperle.de/fileadmin/Hamburg/Uid_744/HKS_Yogastudio_perspektivisch_links.jpg")
  yoga_studio13.photos.attach(io: file, filename: "#{yoga_studio13.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio13.save!

yoga_studio14 = YogaStudio.create!(
  name: "Dharma Yoga Berlin",
  address: "Kienitzer Str. 98, 12049 Berlin",
  description: "Join our community of yogis and experience the transformative power of yoga in a welcoming space.",
  user: user3
)

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2ndV5ddRz7TS4EUVUtO1r5Gm0apY3DGh4kQ&usqp=CAU")
  yoga_studio14.photos.attach(io: file, filename: "#{yoga_studio14.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.metalocus.es/sites/default/files/styles/mopis_news_carousel_item_desktop/public/metalocus_invisible-studio_yoga-studio_01.jpg?itok=Ij4IvWTW")
  yoga_studio14.photos.attach(io: file, filename: "#{yoga_studio14.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://architecturesstyle.com/wp-content/uploads/2022/08/Rammed-Earth-Yoga-Studio-Invisible-Studio-18.jpg")
  yoga_studio14.photos.attach(io: file, filename: "#{yoga_studio14.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio14.save!

yoga_studio15 = YogaStudio.create!(
  name: "Middendorf Yoga Neukölln",
  address: "Karl-Marx-Str. 92-98, 12043 Berlin",
  description: "Our studio is in the heart of Neukölln, 2 minutes from the subway station Rathaus Neukölln. Furnished with a lot of love, so that our members feel comfortable, arrive and can let go of their everyday stress.",
  user: user1
)

file = URI.open("https://helloyogis.com/wp-content/uploads/2022/05/280372968_121853710506500_8216059638512102729_n.jpg")
  yoga_studio15.photos.attach(io: file, filename: "#{yoga_studio15.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://helloyogis.com/wp-content/uploads/2022/05/281798493_124859140205957_5769593925221191700_n.jpg")
  yoga_studio15.photos.attach(io: file, filename: "#{yoga_studio15.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio15.save!

yoga_studio16 = YogaStudio.create!(
  name: "Imrama Yoga",
  address: "Böckhstraße 21, 10967 Berlin",
  description: "Our yoga studio offers a variety of classes to suit all levels, from beginners to advanced practitioners.",
  user: user2
)

file = URI.open("https://classpass-res.cloudinary.com/image/upload/f_auto/q_auto/fhi6s8kmkgts0vjrpdcr.jpg")
  yoga_studio16.photos.attach(io: file, filename: "#{yoga_studio16.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://classpass-res.cloudinary.com/image/upload/f_auto/q_auto,w_1125/media_venue/wltppzpwtopheykcn7bl.jpg")
  yoga_studio16.photos.attach(io: file, filename: "#{yoga_studio16.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://classpass-res.cloudinary.com/image/upload/f_auto/q_auto,w_1125/media_venue/ocxpg1qjmwpozodzhib0.jpg")
  yoga_studio16.photos.attach(io: file, filename: "#{yoga_studio16.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio16.save!

yoga_studio17 = YogaStudio.create!(
  name: "Namaste Yoga Berlin",
  address: "Warthestraße 12, 12051 Berlin",
  description: "Discover the benefits of a consistent yoga practice, and cultivate strength, flexibility, and balance.",
  user: user3
)

file = URI.open("https://www.greenretreats.co.uk/wp-content/uploads/Pinn-7.5m-x-4m-3.jpg")
  yoga_studio17.photos.attach(io: file, filename: "#{yoga_studio17.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.greenretreats.co.uk/wp-content/uploads/Pinn-7.5m-x-4m-1.jpg")
  yoga_studio17.photos.attach(io: file, filename: "#{yoga_studio17.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://www.greenretreats.co.uk/wp-content/uploads/Pinn-7.5m-x-4m-4.jpg")
  yoga_studio17.photos.attach(io: file, filename: "#{yoga_studio17.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio17.save!

yoga_studio18 = YogaStudio.create!(
  name: "Yoga Now Berlin",
  address: "Mehringdamm 61, 10961 Berlin",
  description: "Our goal is to keep yoga accessible to all, to practice it in an inspiring way for the benefit of all, and to encourage students to practice independently.
  We are fortunate to have great yoga teachers on our team and give them the freedom to customize their classes based on
  students' needs.",
  user: user1
)

file = URI.open("https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_2560/https://yoganowberlin.de/wp-content/uploads/2022/04/yoganowberlin.de-einblicke-img-2551-1-scaled.jpg")
  yoga_studio18.photos.attach(io: file, filename: "#{yoga_studio18.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_2560/https://yoganowberlin.de/wp-content/uploads/2022/04/yoganowberlin.de-einblicke-img-2488-scaled.jpg")
  yoga_studio18.photos.attach(io: file, filename: "#{yoga_studio18.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://sp-ao.shortpixel.ai/client/to_auto,q_lossless,ret_img,w_2560/https://yoganowberlin.de/wp-content/uploads/2022/04/yoganowberlin.de-einblicke-img-2437-scaled.jpg")
  yoga_studio18.photos.attach(io: file, filename: "#{yoga_studio18.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio18.save!

yoga_studio19 = YogaStudio.create!(
  name: "YEAH STUDIO",
  address: "Husemannstraße 17, 10435 Berlin",
  description: "YEAH STUDIO is your boutique yoga studio for yoga, barre pilates, fitness, functional training and coaching in Berlin.
  Our rooms are in the middle of the beautiful Kollwitzkiez in Prenzlauer Berg.
  We offer classes in German and English.",
  user: user2
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/5530bf28e4b016e87d8a4312/1550118611170-Z3F26K8CYMOQLAREL5PQ/Good_Vibes_Collingwood_Samuel_Austin_LR-14_v2-min.jpg?format=1500w")
  yoga_studio19.photos.attach(io: file, filename: "#{yoga_studio19.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://images.squarespace-cdn.com/content/v1/5530bf28e4b016e87d8a4312/1547685748594-R3HNS8JETAK0GULUTUUQ/GVJennalea-3.jpg?format=1500w")
  yoga_studio19.photos.attach(io: file, filename: "#{yoga_studio19.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://images.squarespace-cdn.com/content/v1/5530bf28e4b016e87d8a4312/1550118414161-CG740HNQTY5U2S2QHMN8/GVLaraCooper-67-min.jpg?format=1500w")
  yoga_studio19.photos.attach(io: file, filename: "#{yoga_studio19.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio19.save!

yoga_studio20 = YogaStudio.create!(
  name: "Vishuddha Yoga Centre",
  address: "Hasenheide 8, 10967 Berlin",
  description: "Get your sweat on with our dynamic yoga classes, designed to challenge and invigorate the body.",
  user: user2
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/62405abf298f240f75ac39b3/0366be43-1b4a-4045-9d59-0de4ea01d1de/1+classes+yoga+oxford.jpg")
  yoga_studio20.photos.attach(io: file, filename: "#{yoga_studio20.name}#{rand(1..100)}.png", content_type: "image/png")
file = URI.open("https://adrianjames.com/wordpress/wp-content/uploads/vishuddha-yoga-centre-oxford-4.jpg")
  yoga_studio20.photos.attach(io: file, filename: "#{yoga_studio20.name}#{rand(1..100)}.png", content_type: "image/png")

yoga_studio20.save!

# Creating reviews
puts "Creating reviews..."

review1 = yoga_studio1.reviews.create!(
  rating: 3,
  content: "The class was fine, but the room was really hot and uncomfortable. I give it 3 stars.",
)

review2 = teacher1.reviews.create!(
  rating: 5,
  content: "Absolutely loved this class! The teacher was amazing and made everyone feel welcome.
  The studio was clean and peaceful. 5 stars!",
)

review3 = yoga_studio2.reviews.create!(
  rating: 3,
  content: "The studio was really crowded and I felt like I didn't have enough space during the class. 3 stars.",
)

review4 = teacher2.reviews.create!(
  rating: 1,
  content: "I went to this yoga class and was really disappointed.
  The teacher seemed unprepared and the flow was choppy. I give it 1 star.",
)

review5 = yoga_studio3.reviews.create!(
  rating: 3,
  content: "This studio had a great variety of classes, but the front desk staff was rude and unhelpful. 3 stars.",
)

review6 = teacher3.reviews.create!(
  rating: 5,
  content: "This was one of the most challenging yoga classes I've ever taken, but I left feeling so accomplished.
  The teacher was amazing. 5 stars!",
)

review7 = yoga_studio4.reviews.create!(
  rating: 4,
  content: "I had a great experience at this class. The teacher was helpful and kind, and the studio had a calming atmosphere. 4 stars.",
)

review8 = teacher4.reviews.create!(
  rating: 5,
  content: "The teacher was fantastic and the class was exactly what I needed to relax and de-stress. 5 stars!",
)

review9 = yoga_studio5.reviews.create!(
  rating: 4,
  content: "This studio had a great selection of classes, but the prices were a bit too high for my budget. 4 stars.",
)

review10 = teacher5.reviews.create!(
  rating: 4,
  content: "The teacher was clearly very experienced and knowledgeable about yoga, but I found their teaching style to be too strict and inflexible.
  I didn't feel very supported in the class and it was hard to relax. 4 stars.",
)

# Creating yoga_studio_teachers_join_table
puts "Creating yoga studio teachers join table..."

yoga_studio_teacher1 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio12,
  teacher: teacher6
)

yoga_studio_teacher2 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio8,
  teacher: teacher2
)

yoga_studio_teacher3 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio19,
  teacher: teacher1
)

yoga_studio_teacher4 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio5,
  teacher: teacher4
)

yoga_studio_teacher5 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio20,
  teacher: teacher5
)

yoga_studio_teacher6 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio1,
  teacher: teacher3
)

yoga_studio_teacher7 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio2,
  teacher: teacher7
)

yoga_studio_teacher8 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio3,
  teacher: teacher8
)

yoga_studio_teacher9 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio4,
  teacher: teacher9
)

yoga_studio_teacher10 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio6,
  teacher: teacher10
)

yoga_studio_teacher11 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio7,
  teacher: teacher4
)

yoga_studio_teacher12 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio9,
  teacher: teacher3
)

yoga_studio_teacher13 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio10,
  teacher: teacher2
)

yoga_studio_teacher14 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio11,
  teacher: teacher1
)

yoga_studio_teacher15 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio13,
  teacher: teacher9
)

yoga_studio_teacher16 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio14,
  teacher: teacher8
)

yoga_studio_teacher17 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio15,
  teacher: teacher7
)

yoga_studio_teacher18 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio16,
  teacher: teacher6
)

yoga_studio_teacher19 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio17,
  teacher: teacher5
)

yoga_studio_teacher20 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio18,
  teacher: teacher4
)

# Creating yoga Classes
puts "Creating yoga classes..."

yoga_class1 = YogaClass.create!(
  name: "Hatha Yoga",
  description: "Haṭha yoga is a branch of yoga which uses physical techniques to try to preserve and channel the vital force or energy.
  The Sanskrit word हठ haṭha literally means 'force', alluding to a system of physical techniques.",
  price: 10,
  capacity: 25,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher1,
  difficulty: "Beginner",
  style: "Hatha",
  user: user1
)

file = URI.open("https://30-tage-yoga.de/wp-content/uploads/2021/01/hatha-yoga.jpg")
yoga_class1.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class1.save!

yoga_class2 = YogaClass.create!(
  name: "Vinyasa Yoga",
  description: "Vinyasa is a style of yoga characterized by stringing postures together so that you move from one to another,
   seamlessly, using breath.  Commonly referred to as “flow” yoga, it is sometimes confused with “power yoga“.",
  price: 10,
  capacity: 30,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher2,
  difficulty: "Intermediate",
  style: "Vinyasa",
  user: user1
)

file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/vinyasa-yoga-1632415154.jpg?crop=0.8893333333333334xw:1xh;center,top&resize=1200:*")
yoga_class2.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class2.save!

yoga_class3 = YogaClass.create!(
  name: "Ashtanga Yoga",
  description: "Ashtanga is a very dynamic and athletic form of hatha yoga, made up of six series or levels, with a fixed order of postures.
   It is rooted in vinyasa, the flowing movements between postures, with a focus on energy and breath. While it is a very physical practice,
  it also promotes mental clarity and inner peace.",
  price: 12,
  capacity: 25,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher3,
  difficulty: "Advanced",
  style: "Ashtanga",
  user: user3
)

file = URI.open("https://omstars.com/blog/wp-content/uploads/2018/02/Kino-MacGregor-Ashtanga-Immersion-3-scaled.jpeg")
yoga_class3.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class3.save!

yoga_class4 = YogaClass.create!(
  name: "Iyengar Yoga",
  description: "Iyengar Yoga is a form of yoga as exercise with a focus on the structural alignment of the physical body through the practice of asanas.
   It differs from other styles of yoga in three ways: precision, sequence and use of props.",
  price: 18,
  capacity: 12,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher4,
  difficulty: "All Levels",
  style: "Iyengar",
  user: user2
)

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/56/Schulterstand-mit-stuhl-iyengar-yoga-2020.jpg")
yoga_class4.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class4.save!

yoga_class5 = YogaClass.create!(
  name: "Hot Yoga",
  description: "Hot yoga is a form of yoga as exercise performed under hot and humid conditions, resulting in considerable sweating.
  Some hot yoga practices seek to replicate the heat and humidity of India, where yoga originated.",
  price: 30,
  capacity: 25,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher1,
  difficulty: "Advanced",
  style: "Hot",
  user: user3
)

file = URI.open("https://www.verywellfit.com/thmb/cEKeM7uQ0ti3Cvxnrro8pg3ig40=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1339242968-47adc76d745c4d9c824497799562c94c.jpg")
yoga_class5.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class5.save!

yoga_class6 = YogaClass.create!(
  name: "Kundalini Yoga",
  description: "Kundalini yoga is a form of yoga that involves chanting, singing, breathing exercises, and repetitive poses.
  Its purpose is to activate your Kundalini energy, or shakti. This is a spiritual energy that's said to be located at the base of your spine.",
  price: 10,
  capacity: 35,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher2,
  difficulty: "All Levels",
  style: "Kundalini",
  user: user1
)

file = URI.open("https://yogapractice.com/wp-content/uploads/2020/09/Kundalini-Yoga-Everything-You-Need-To-Know.jpg")
yoga_class6.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class6.save!

yoga_class7 = YogaClass.create!(
  name: "Restorative Yoga",
  description: "Restorative yoga is a restful practice that is all about slowing down and opening your body through passive stretching.
  If you take a restorative class, you may hardly move at all, doing just a few postures over the course of an hour.",
  price: 20,
  capacity: 20,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher3,
  difficulty: "Beginner",
  style: "Restorative",
  user: user2
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/61109caadec7201876451105/2e86c4c7-2985-4cf7-ba71-7448ff71182f/0446.jpg")
yoga_class7.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class7.save!

yoga_class8 = YogaClass.create!(
  name: "Yin Yoga",
  description: "The practice of yin yoga is based on ancient Chinese philosophies and Taoist principles which believe there are pathways of Qi (energy)
  that run through our bodies. By stretching and deepening into poses, we're opening up any blockages and releasing that energy to flow freely.",
  price: 20,
  capacity: 18,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher4,
  difficulty: "All Levels",
  style: "Yin",
  user: user1
)

file = URI.open("https://utopia.de/app/uploads/2021/01/yin-yoga-cc0-pixabay-stocksnap-190318.jpg")
yoga_class8.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class8.save!

yoga_class9 = YogaClass.create!(
  name: "Power Yoga",
  description: "As the name suggests, power yoga is focused on building strength and endurance. It is also an excellent form of yoga for burning calories.
  With power yoga, the emphasis is on the flow from one pose to the next, rather than approaching each pose separately.
  The poses aren't disconnected from each other, unlike some other forms of yoga.",
  price: 28,
  capacity: 30,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher1,
  difficulty: "Advanced",
  style: "Power",
  user: user3
)

file = URI.open("https://wp-test-dev.s3.amazonaws.com/public/uploads/2020/12/Yoga_da-kuk.jpg")
yoga_class9.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class9.save!

yoga_class10 = YogaClass.create!(
  name: "Anusara Yoga",
  description: "The Anusara style emphasizes a set of Universal Principles of Alignment which underlie all of the physical asanas and are connected to philosophical aspects of the practice.
  The school's ideology is grounded in a Tantric philosophy of intrinsic goodness.",
  price: 10,
  capacity: 20,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher2,
  difficulty: "All Levels",
  style: "Anusara",
  user: user2
)

file = URI.open("https://assets.yogaescapes.de/fileadmin/_processed_/1817942950/Zj0lMkZ1c2VyX3VwbG9hZCUyRmFudXNhcmEteW9nYS1hYmxhdWYuanBn/")
yoga_class10.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class10.save!

yoga_class11 = YogaClass.create!(
  name: "Prenatal Yoga",
  description: "Prenatal yoga is an adaptable approach to exercise that engages the mind and spirit along with the body.
  Prenatal yoga focuses on gentle stretching and strengthening, mental centering, and developing greater awareness of the breath.",
  price: 30,
  capacity: 20,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher3,
  difficulty: "All Levels",
  style: "Prenatal",
  user: user3
)

file = URI.open("https://www.besthealthmag.ca/wp-content/uploads/2020/02/prenatal-yga-poses.jpg?resize=700,466")
yoga_class11.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class11.save!

yoga_class12 = YogaClass.create!(
  name: "Postnatal Yoga",
  description: "Postnatal yoga is a style of yoga that addresses the physical, mental and emotional challenges of being a new mother, as well as the aftermath of pregnancy.
  Yoga poses focus on helping new mothers tone their body and regain their figure, relieve stress and even bond with their newborn.",
  price: 30,
  capacity: 20,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher4,
  difficulty: "All Levels",
  style: "Postnatal",
  user: user1
)

file = URI.open("https://www.epyogaeugene.com/wp-content/uploads/2022/03/postnatal_mum_baby_yoga-1024x576-1.png")
yoga_class12.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class12.save!

yoga_class13 = YogaClass.create!(
  name: "Jivamukti Yoga",
  description: "The purpose of Jivamukti yoga is to remind the Western Civilization of the original intention of yoga,
  which is to provide a practitioner with a path to enlightenment; to intertwine a holistic approach to living into every class,
  and allow that approach to life to flow with grace into every moment through compassion for all living beings.",
  price: 22,
  capacity: 20,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher1,
  difficulty: "All Levels",
  style: "Jivamukti",
  user: user2
)

file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/jivamukti-yoga-candida-vivalda-womenshealth-1624959346.jpg")
yoga_class13.photo.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")

yoga_class13.save!

# # Creating bookings
puts "Creating bookings..."

booking1 = Booking.create!(
  user: user1,
  yoga_class: yoga_class1
)

booking2 = Booking.create!(
  user: user1,
  yoga_class: yoga_class2
)

booking3 = Booking.create!(
  user: user1,
  yoga_class: yoga_class3
)

booking4 = Booking.create!(
  user: user1,
  yoga_class: yoga_class4
)

puts "Finished!"
