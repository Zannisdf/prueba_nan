# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all

10.times do |i|
  Task.create(
    title: "Tarea #{i + 1}",
    image_url: "https://picsum.photos/300/300?image=#{rand(1..50)}"
  )
end
