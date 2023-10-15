class Movie < ApplicationRecord
  has_many :like_movies, class_name: 'MovieRelationship::LikeMovie'
  has_many :watch_users, class_name: 'MovieRelationship::WatchMovie'
  has_many :comments, class_name: 'MovieRelationship::Comment'
  has_many :link_via_taste, through: :like_movies, source: :user
  has_many :link_via_watch, through: :watch_users, source: :user

  def liking_users
    link_via_taste.where(movie_relationship_like_movies: { status: 1 })
  end 

  def disliking_users
    link_via_taste.where(movie_relationship_like_movies: { status: 2 })
  end 

  def users_watched
    link_via_watch.where(movie_relationship_watch_movies: {status:0})
  end 

  def users_watching
    link_via_watch.where(movie_relationship_watch_movies: {status:1})
  end 

  def users_want_to_watch
    link_via_watch.where(movie_relationship_watch_movies: {status:2})
  end          
  
end
