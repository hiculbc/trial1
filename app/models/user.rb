class User < ApplicationRecord
  has_many :like_movies, class_name: 'MovieRelationship::LikeMovie'
  has_many :watch_movies, class_name: 'MovieRelationship::WatchMovie'
  has_many :movie_comments, class_name: 'MovieRelationship::Comment'
  has_many :like_songs, class_name: 'SongRelationship::LikeSong'
  has_many :song_comments, class_name: 'SongRelationship::CommentSong'
  has_many :like_foods, class_name: 'FoodRelationship::LikeFood'
  has_many :watch_foods, class_name: 'FoodRelationship::FoodStatus'
  has_many :food_comments, class_name: 'FoodRelationship::CommentFood'
  has_many :like_books, class_name: 'BookRelationship::LikeBook'
  has_many :watch_books, class_name: 'BookRelationship::BookStatus'
  has_many :book_comments, class_name: 'BookRelationship::CommentBook'
  has_many :link_movie_via_taste, through: :like_movies, source: :movie
  has_many :link_movie_via_watch, through: :watch_movies, source: :movie
  has_many :link_song_via_taste, through: :like_songs, source: :song
  has_many :link_food_via_taste, through: :like_foods, source: :food
  has_many :link_food_via_watch, through: :watch_foods, source: :food
  has_many :link_book_via_taste, through: :like_books, source: :book
  has_many :link_book_via_watch, through: :watch_books, source: :book

  # Methods regarding movies

  def liked_movies
    link_movie_via_taste.where(movie_relationship_like_movies: {status: 1})
  end 

  def disliked_movies 
    link_movie_via_taste.where(movie_relationship_like_movies: {status: 2})
  end 

  def watched_movies 
    link_movie_via_watch.where(movie_relationship_watch_movies: {status: 0})
  end 

  def watching_movies
    link_movie_via_watch.where(movie_relationship_watch_movies: {status: 1})
  end 

  def want_to_watch_movies
    link_movie_via_watch.where(movie_relationship_watch_movies: {status: 2})
  end 

  def notes_of_movie(m1)
    watch_movies.find_by(movie: m1)&.notes
  end 

  def comment_on_movie(m1)
    movie_comments.where(movie: m1)
  end 

  # Methods regarding songs

  def liked_songs
    link_song_via_taste.where(song_relationship_like_songs: {status: 1})
  end 

  def disliked_songs
    link_song_via_taste.where(song_relationship_like_songs: { status: 2})
  end 

  # methods regarding food

  def liked_foods
    link_food_via_taste.where(food_relationship_like_foods: {status: 1})
  end 

  def disliked_foods
    link_food_via_taste.where(food_relationship_like_foods: {status: 2})
  end

  def tasted_foods
    link_food_via_watch.where(food_relationship_food_statuses: {status: 0})
  end 

  def interested_foods
    link_food_via_watch.where(food_relationship_food_statuses: {status: 1})
  end 

  # methods regarding books

  def liked_books
    link_book_via_taste.where(book_relationship_like_books: {status: 1})
  end 

  def disliked_books
    link_book_via_taste.where(book_relationship_like_books: {status: 2})
  end 

  def read_books
    link_book_via_watch.where(book_relationship_book_statuses: {status: 0})
  end 

  def reading_books
    link_book_via_watch.where(book_relationship_book_statuses: {status: 1})
  end 

  def want_to_read_books
    link_book_via_watch.where(book_relationship_book_statuses: {status: 2})
  end 

end
