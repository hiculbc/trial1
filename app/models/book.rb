class Book < ApplicationRecord
    has_many :food_comments, class_name: 'FoodRelationship::CommentFood'
    has_many :like_books, class_name: 'BookRelationship::LikeBook'
    has_many :watch_books, class_name: 'BookRelationship::BookStatus'
    has_many :user_comments, class_name: 'BookRelationship::CommentBook'
    has_many :link_book_via_taste, through: :like_books, source: :user
    has_many :link_book_via_watch, through: :watch_books, source: :user

    def liked_users
        link_book_via_taste.where(book_relationship_like_books: {status: 1})
      end 
    
      def disliked_users
        link_book_via_taste.where(book_relationship_like_books: {status: 2})
      end 
    
      def read_users
        link_book_via_watch.where(book_relationship_book_statuses: {status: 0})
      end 
    
      def reading_users
        link_book_via_watch.where(book_relationship_book_statuses: {status: 0})
      end 
    
      def want_to_read_users
        link_book_via_watch.where(book_relationship_book_statuses: {status: 0})
      end 
end
