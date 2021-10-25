# frozen_string_literal: true

class Movie < ApplicationRecord
  # for comparing the superior movies and inferior movies
  has_many :superior_comparisons, foreign_key: :superior_movie_id, class_name: 'Comparison'
  has_many :inferior_movies, through: :superior_comparisons # though Comparison we can get inferior movies

  has_many :inferior_comparisons, foreign_key: :inferior_movie_id, class_name: 'Comparison'
  has_many :superior_movies, through: :inferior_comparisons # though Comparison we can get superior movies

  has_many :fans, through: :superior_comparisons, source: :user
  has_many :haters, through: :inferior_comparisons, source: :user
end
