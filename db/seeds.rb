# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  username: "admin",
  email: "admin@boardrails.net",
  password: "admin123",
  password_confirmation: "admin123",
)
user.skip_confirmation!
user.save!

board = Board.new(
  name: "Test",
  description: "This is an automatically generated test board"
)
board.save!

child_board = Board.new(
  name: "Test Child",
  description: "This is a test board, and a child of the first Test board",
  parent_id: board.id
)
child_board.save!