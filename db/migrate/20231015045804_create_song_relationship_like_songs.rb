class CreateSongRelationshipLikeSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :song_relationship_like_songs do |t|
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
