class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.text :song_name
      t.text :song_creator

      t.timestamps
    end
  end
end
