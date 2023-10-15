class CreateBookRelationshipCommentBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :book_relationship_comment_books do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
