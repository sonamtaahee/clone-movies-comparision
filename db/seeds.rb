# frozen_string_literal: true

Movie.destroy_all
Comparison.destroy_all
User.destroy_all

sonam = User.create!(name: 'Sonam Tashi')
look_back = User.create!(name: 'Back Catcher')

dark_knight = Movie.create!(title: 'The Dark night', year: 2008)
pulp_fiction = Movie.create!(title: 'Pulp Fiction', year: 1994)

citizen_kane = Movie.create!(title: 'Citizen Kane', year: 1941)

Comparison.create!(user_id: sonam.id, superior_movie_id: dark_knight.id, inferior_movie_id: citizen_kane.id)
Comparison.create!(user_id: sonam.id, superior_movie_id: citizen_kane.id, inferior_movie_id: pulp_fiction.id)
Comparison.create!(user_id: look_back.id, superior_movie_id: citizen_kane.id, inferior_movie_id: dark_knight.id)
Comparison.create!(user_id: look_back.id, superior_movie_id: pulp_fiction.id, inferior_movie_id: citizen_kane.id)
