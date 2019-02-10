# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.create(name: "Comedy")
c2 = Category.create(name: "Drama")

p1 = Post.create(title: "The Next Great American Hero", content: "To be revealed after I complete my research.")
p2 = Post.create(title: "Far and Away", content: "TTo be or not to be that is the question.")

p_c1 = PostCategory.create(post: p1, category: c1)
p_c2 = PostCategory.create(post: p1, category: c2)
p_c3 = PostCategory.create(post: p2, category: c2)

ron = User.create(username: "Ron Weasley", email: "bigred94@gmail.com")
bill = User.create(username: "Bill Weasley", email: "bigred87@gmail.com")
gin = User.create(username: "Ginny Weasley", email: "bigred@gmail.com")


com1 = Comment.create(content: "this post is awesome", user: ron, post: p1)
com2 = Comment.create(content: "I learned so much", user: gin, post: p1)
com3 = Comment.create(content: "truly inspired", user: bill, post: p1)
com4 = Comment.create(content: "what's this have to do with potions?", user: ron, post: p2)
com5 = Comment.create(content: "got here by accident. apologies", user: gin, post: p2)
com6 = Comment.create(content: "this post is dank.", user: bill, post: p2)
