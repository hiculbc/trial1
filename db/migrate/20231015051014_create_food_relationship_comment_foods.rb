class CreateFoodRelationshipCommentFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :food_relationship_comment_foods do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
