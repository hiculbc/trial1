class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.text :book_name
      t.text :book_author

      t.timestamps
    end
  end
end
