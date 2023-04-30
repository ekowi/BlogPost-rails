# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.where(email: "ekowi@ekowi.com").first_or_initialize
user.update!(
    password: "Z0mb!erid3r",
    password_confirmation: "Z0mb!erid3r"
)