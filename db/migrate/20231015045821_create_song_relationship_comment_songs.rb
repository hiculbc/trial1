class CreateSongRelationshipCommentSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :song_relationship_comment_songs do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
