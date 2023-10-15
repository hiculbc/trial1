class SongRelationship::LikeSong < ApplicationRecord
  belongs_to :user
  belongs_to :song

end
