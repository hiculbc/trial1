class CreateFoodRelationshipLikeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :food_relationship_like_foods do |t|
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
