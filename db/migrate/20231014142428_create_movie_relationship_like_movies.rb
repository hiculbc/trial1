class CreateMovieRelationshipLikeMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_relationship_like_movies do |t|
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
