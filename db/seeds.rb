# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
Dog.destroy_all
Walker.destroy_all
Reservation.destroy_all

Owner.reset_pk_sequence
Dog.reset_pk_sequence
Walker.reset_pk_sequence
Reservation.reset_pk_sequence

Owner.create!(name: "Michelle", city: "Brooklyn", address: "63 Bokee Court Brooklyn, NY 11223")
Owner.create!(name: "Mason", city: "Brooklyn", address: "2210 East 22nd Street Brooklyn, NY 11229")
Owner.create!(name: "Morgan", city: "Brooklyn", address: "2416 West 9th Street Brooklyn, NY 11235")

Dog.create!(name: "Jimmy", gender: "Male", age: 6, breed: "Yorkshire Terrier", owner_id: Owner.first.id)
Dog.create!(name: "Bahlu", gender: "Male", age: 3, breed: "German Shepherd", owner_id: Owner.second.id)
Dog.create!(name: "Bear", gender: "Female", age: 4, breed: "Rottweiler", owner_id: Owner.second.id)
Dog.create!(name: "Charlie", gender: "Male", age: 5, breed: "Golden Retriever", owner_id: Owner.third.id)

Walker.create!(name: "Jim", age: 18, rating: 4)
Walker.create!(name: "John", age: 28, rating: 5)
Walker.create!(name: "James", age: 24, rating: 3)

Reservation.create!(dog_id: Dog.first.id, walker_id: Walker.first.id)
Reservation.create!(dog_id: Dog.second.id, walker_id: Walker.second.id)
Reservation.create!(dog_id: Dog.third.id, walker_id: Walker.second.id)
Reservation.create!(dog_id: Dog.fourth.id, walker_id: Walker.third.id)
Reservation.create!(dog_id: Dog.fourth.id, walker_id: Walker.first.id)