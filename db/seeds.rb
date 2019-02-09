# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 Category.destroy_all
 Post.destroy_all
 Comment.destroy_all
 User.destroy_all

 user1 = User.create(username: "Hai", email: "hai123@gmail.com")
 user2 = User.create(username: "Nathan", email: "nathan456@gmail.com")
 user3 = User.create(username: "Vincent", email: "vincent789@gmail.com")

 cat1 = Category.create(name: "Horror")
 cat2 = Category.create(name: "Comedy")
 cat3 = Category.create(name: "Drama")

 post1 = Post.create(title: "The Show", content: "The show is great.")
 post2 = Post.create(title: "Trouble Is A Friend", content: "Trouble will follow you no matter where you go.")
 post3 = Post.create(title: "The Ocean", content: "The ocean is vast.")
 post4 = Post.create(title: "The Ground", content: "The ground is hard.")

 com1 = Comment.create(content: "Perfect post!", user: user1, post: post1)
 com2 = Comment.create(content: "No so great post!", user: user1, post: post2)
 com3 = Comment.create(content: "Good post!", user: user3, post: post1)

 PostCategory.create(post_id: post1.id, category_id: cat1.id)
 PostCategory.create(post_id: post1.id, category_id: cat2.id)
 PostCategory.create(post_id: post1.id, category_id: cat3.id)
 PostCategory.create(post_id: post2.id, category_id: cat1.id)
 PostCategory.create(post_id: post2.id, category_id: cat2.id)
 PostCategory.create(post_id: post3.id, category_id: cat1.id)
 PostCategory.create(post_id: post3.id, category_id: cat3.id)
