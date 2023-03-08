
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

# Creating teachers
puts "Creating teachers..."

teacher1 = Teacher.create!(
  name: "Teacher 1",
  description: "Teacher 1 description",
  user: user1
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
teacher1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
teacher1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
teacher1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher1.save!

teacher2 = Teacher.create!(
  name: "Teacher 2",
  description: "Teacher 2 description",
  user: user1
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
teacher2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
teacher2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
teacher2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
teacher2.save!

# Creating Yoga studios
puts "Creating yoga studios..."

yoga_studio1 = YogaStudio.create!(
  name: "Yoga Studio 1",
  description: "Yoga Studio 1 description",
  address: "Krausenstraße 28, 10117 Berlin",
  user: user1
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
yoga_studio1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
yoga_studio1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
yoga_studio1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
yoga_studio1.save!

yoga_studio2 = YogaStudio.create!(
  name: "Yoga Studio 2",
  description: "Yoga Studio 2 description",
  address: "Boxhagener Str. 77, 10245 Berlin",
  user: user1
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
yoga_studio2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
yoga_studio2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
yoga_studio2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
yoga_studio2.save!

# Creating reviews
puts "Creating reviews..."

review1 = yoga_studio1.reviews.create!(
  rating: 5,
  content: "Review 1 content",
)

review2 = teacher1.reviews.create!(
  rating: 5,
  content: "Review 2 content",
)

# Creating yoga_studio_teachers_join_table
puts "Creating yoga studio teachers join table..."

yoga_studio_teacher1 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio1,
  teacher: teacher1
)

yoga_studio_teacher2 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio1,
  teacher: teacher2
)

yoga_studio_teacher3 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio2,
  teacher: teacher1
)

yoga_studio_teacher4 = YogaStudioTeacher.create!(
  yoga_studio: yoga_studio2,
  teacher: teacher2
)

# Creating yoga Classes
puts "Creating yoga classes..."

yoga_class1 = YogaClass.create!(
  name: "Yoga Class 1",
  description: "Yoga Class 1 description",
  price: 10,
  capacity: 10,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher1,
  user: user1,
  style: "Hatha",
  difficulty: "Beginner"
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
yoga_class1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
yoga_class1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
yoga_class1.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
yoga_class1.save!

yoga_class2 = YogaClass.create!(
  name: "Yoga Class 2",
  description: "Yoga Class 2 description",
  price: 10,
  capacity: 10,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher2,
  user: user1,
  style: "Yin",
  difficulty: "Intermediate"
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
yoga_class2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
yoga_class2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
yoga_class2.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
yoga_class2.save!

yoga_class3 = YogaClass.create!(
  name: "Yoga Class 3",
  description: "Yoga Class 3 description",
  price: 10,
  capacity: 10,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher3,
  user: user1,
  style: "Kundalini",
  difficulty: "Advanced"
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
yoga_class3.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
yoga_class3.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
yoga_class3.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
yoga_class3.save!

yoga_class4 = YogaClass.create!(
  name: "Yoga Class 4",
  description: "Yoga Class 4 description",
  price: 10,
  capacity: 10,
  start_time: "2020-01-01 10:00:00",
  end_time: "2020-01-01 11:00:00",
  yoga_studio_teacher: yoga_studio_teacher4,
  user: user1,
  style: "Ashtanga",
  difficulty: "Beginner"
)

file = URI.open("https://www.praguemorning.cz/wp-content/uploads/2020/02/Screenshot-2020-02-17-at-13.43.16.png")
yoga_class4.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("https://www.meatspace.cz/site/assets/files/5950/namastery-meatspace-_gl.jpg")
yoga_class4.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
file = URI.open("http://www.detoxchutne.cz/wp-content/uploads/2016/09/namastery-studio-01.jpg")
yoga_class4.photos.attach(io: file, filename: "#{rand(1..1000000)}.png", content_type: "image/png")
yoga_class4.save!

# Creating bookings
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
