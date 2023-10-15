class BookRelationship::BookStatus < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
