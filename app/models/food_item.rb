class FoodItem < ApplicationRecord

  def self.search_item_by_name(item_name)
    @name = FoodItem.where(name: "#{item_name}").first
    @name
  end

  def self.create_entry(name, protein, fat, carbs)
    # if food item doesnt exist, create it
    if FoodItem.where(name: "#{name}").first.nil?
      FoodItem.create(name: name,
                      protein: protein,
                      fat: fat,
                      carbs: carbs)
    else
      # return message that the item already exists
      puts "Item already exists meow meow"
      raise "ItemExistsError"
    end
  end

  def self.update_name(name, macro, value)
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

  def self.total_entries
    return FoodItem.count
  end
end
