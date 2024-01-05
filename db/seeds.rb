puts "Creando usuarios"
puts "Un momento"
puts "################################################"

puts "Destruyendo datos..."
Booking.destroy_all
Service.destroy_all
Dog.destroy_all
Walker.destroy_all
User.destroy_all

user1 = User.new( email: "francisco@gmail.com", password: "123456", name: "Francisco Acuña", phone_number: 4777324532, rating_avg: 5, address: "Puerto de Palos 132, Arbide, Leon, Guanajuato, Mexico", about_me: "Me gusta que mi perro salga de paseo", role: "Pet Owner")
file = URI.open("https://avatars.githubusercontent.com/u/132393529?v=4")
user1.photo.attach(io: file, filename: "francisco.png", content_type: "image/png")
user1.save!

user2 = User.new( email: "eduardo@gmail.com", password: "123456", name: "Eduardo Garcia", phone_number: 4779325269, rating_avg: 4.5, address: "Avenida Haciendas del Rosario 132, Real del Bosque, Mexico", about_me: "Me gusta pasear perros en mis tiempos libres", role: "Walker")
file2 = URI.open("https://avatars.githubusercontent.com/u/101772280?v=4")
user2.photo.attach(io: file2, filename: "lalo.png", content_type: "image/png")
user2.save!


user3 = User.new( email: "gio@gmail.com", password: "123456", name: "Gio Cueto", phone_number: 5556489382, rating_avg: 5, address: "Tres Cruces 99, Santa Catarina, Coyoacan, Ciudad de Mexico, Mexico", about_me: "Me gusta mucho que cuiden bien a mi perro otras personas", role: "Pet Owner")
file3 = URI.open("https://avatars.githubusercontent.com/u/105945519?v=4")
user3.photo.attach(io: file3, filename: "gio.png", content_type: "image/png")
user3.save!




puts "Creando Walkers"
puts "#"*20
walker1 = Walker.create!(user_id: user2.id, date_of_birth: "1980-12-25")
walker1.save!

puts "Listo. Walkers creados exitosamente"


puts "Creando mascotas"
puts "#"*20
dog1 = Dog.new(name: "Bosco", date_of_birth: "2021-10-21", breed: "Pastor Aleman", size: "mediano", vaccines: "rabia, sextuple", sickness_allergies: "N/A", about_me: "Soy un perrito muy sociable y romantico", user_id: user3.id)
dog1.save!
perrito1 = URI.open("https://t1.ea.ltmcdn.com/es/posts/7/0/0/alimentacion_de_un_pastor_aleman_cachorro_21007_orig.jpg")
dog1.photo.attach(io: perrito1, filename: "perrito_de_gio.png", content_type: "image/png")
dog1.save!

dog2 = Dog.new(name: "Luna", date_of_birth: "2019-08-22", breed: "Border Collie", size: "mediano", vaccines: "quintuple y sextuple", sickness_allergies: "N/A", about_me: "Es una perrita obediente, bastante sociable", user_id: user1.id)
dog2.save!
perrito2 = URI.open("https://t2.uc.ltmcdn.com/es/posts/9/2/0/cuales_son_los_cuidados_de_un_border_collie_52029_orig.jpg")
dog2.photo.attach(io: perrito2, filename: "perrito_de_pacs.png", content_type: "image/png")
dog2.save!

puts "Listo. Mascotas creadas exitosamente"
puts "Creando Services"
puts "#"*20

service1 = Service.new(walking_time: 60, price: 100, distance: 2, user_id: user2.id)
service1.save!

service2 = Service.new(walking_time: 90, price: 130, distance: 3, user_id: user2.id)
service2.save!

puts "Listo. Services creados exitosamente"
puts "Creando Bookings"
puts "#"*20

booking1 = Booking.new(time: 60, price: 100, date: "2023-01-04", dog_id: dog1.id, service_id: service1.id)
booking1.save!

booking2 = Booking.new(time: 90, price: 130, date: "2023-01-06", dog_id: dog2.id, service_id: service2.id)
booking2.save!

puts "Listo. Bookings creados exitosamente"
puts "Rails db:seed ejecutado exitosamente!!"


