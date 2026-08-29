# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.find_or_initialize_by(email: "jose.garcia.dev86@gmail.com")
user.update!(
  password: "md6!Rswcc!^d7U7",
  password_confirmation: "md6!Rswcc!^d7U7"
)

# 100.times do |i|
#   BlogPost.create title: "Blog Post #{i + 1}", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", published_at: current.now
# end
