
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

teacher2 = Teacher.create!(
  name: "Teacher 2",
  description: "Teacher 2 description",
  user: user1
)

# Creating Yogastudios
puts "Creating yoga studios..."

yoga_studio1 = YogaStudio.create!(
  name: "Yoga Studio 1",
  description: "Yoga Studio 1 description",
  address: "Yoga Studio 1 address",
  user: user1
)
