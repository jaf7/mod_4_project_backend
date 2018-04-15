# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
project_one = Project.create(title: 'project one', body: 'project one body')
user_one = User.create(name: 'user one')
project_one.users << user_one
user_one.projects << project_one


project_two = Project.create(title: 'project two', body: 'project two body')
user_two = User.create(name: 'user two', id: project_two.id)
project_two.users << user_two
user_two.projects << project_two

project_three = Project.create(title: 'project three', body: 'project three body')
user_three = User.create(name: 'user three', id: project_three.id)
project_three.users << user_three
user_three.projects << project_three

project_four = Project.create(title: 'project four', body: 'project four body')
user_four = User.create(name: 'user four', id: project_four.id)
project_four.users << user_four
user_four.projects << project_four

project_five = Project.create(title: 'project five', body: 'project five body')
user_five = User.create(name: 'user five', id: project_five.id)
project_five.users << user_five
user_five.projects << project_five

