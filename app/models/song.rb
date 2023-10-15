class Song < ApplicationRecord
    has_many :user_connects, class_name: 'SongRelationship::LikeSong'
    has_many :comments, class_name: 'SongRelationship::CommentSong'
    has_many :users, through: :user_connects, source: :user

    def liked_users
        users.where(song_relationship_like_songs: {status: 1})
    end 

    def disliked_users
        users.where(song_relationship_like_songs: {status: 2})
    end 

end
