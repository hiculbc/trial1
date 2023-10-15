class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.text :movie_name
      t.text :movie_director

      t.timestamps
    end
  end
end
