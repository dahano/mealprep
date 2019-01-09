class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :protein
      t.string :fat
      t.string :carbs

      t.timestamps
    end
  end
end
