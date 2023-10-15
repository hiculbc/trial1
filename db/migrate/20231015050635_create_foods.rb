class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.text :food_name

      t.timestamps
    end
  end
end
