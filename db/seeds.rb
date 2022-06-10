# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user = User.create(name: "Sample", email: "sample@gmail.com", password: "sample")

list = List.create(title: "To Watch", icon_number: 1, user: user)

todos = [
  ["watch \" Sleepless in Seattle\"", true, user, list], 
  ["watch \" You\'ve got mail\"", true, user, list], 
  ["watch \" When Harry met Sally\"", false, user, list]
]

todos.each do |content, done, user, list| 
  Todo.create(content: content, done: done, user: user, list: list)
end
