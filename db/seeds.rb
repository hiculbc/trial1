# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# users = []

# movies = []

# for i in ("a".."z") do
#     movies.push(Movie.create(movie_name: i,movie_director: ("a".."z").to_a.shuffle[0..1].join("")))
# end 

# 20.times {
#     name = ("a".."z").to_a.shuffle[0..6].join("")
#     email = name + "@gmail.com"
#     users.push(User.create(username: name, useremail: email,password_digest: "foobar"))
# }

# 10.times {
#     random_user = ((rand*100).to_i)%20
#     random_movie = ((rand*100).to_i)%26
#     MovieRelationship::LikeMovie.create(movie: movies[random_movie], user: users[random_user],status: 1)
# }

# 10.times {
#     random_user = ((rand*100).to_i)%20
#     random_movie = ((rand*100).to_i)%26
#     MovieRelationship::LikeMovie.create(movie: movies[random_movie], user: users[random_user],status: 2)
# }
