class FoodItem < ApplicationRecord

  def self.find_food_item_name(item_name)
    @name = FoodItem.where(name: "#{item_name}")
  end

  def self.add_item(name, protein, fat, carbs)
    # if food item doesnt exist, create it
    FoodItem.create(name: name, protein: protein, fat: fat, carbs: carbs)
  end
end
