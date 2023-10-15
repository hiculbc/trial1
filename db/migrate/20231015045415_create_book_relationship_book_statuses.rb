class CreateBookRelationshipBookStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :book_relationship_book_statuses do |t|
      t.integer :status
      t.text :notes
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
