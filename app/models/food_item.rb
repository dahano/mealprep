class FoodItem < ApplicationRecord

  def self.find_food_item_name(item_name)
    puts "did i get here?"
    @name = FoodItem.where(name: "#{item_name}").first
  end

  def self.add_item(name, protein, fat, carbs)
    # if food item doesnt exist, create it
    if !FoodItem.where(name: "#{name}").first.nil?
      FoodItem.create(name: name, protein: protein, fat: fat, carbs: carbs)
    else
      # return message that the item already exists
      puts "Item already exists meow meow"
      raise ItemExistsError
    end
  end

  def self.update_item_by_name(name, macro, value)
    item = FoodItem.where(name: name).first
    case macro.downcase
    when 'protein'
      item.protein(value)
    when 'fat'
      item.fat(value)
    when 'carbs'
      item.carbs(value)
    end
  end
end
