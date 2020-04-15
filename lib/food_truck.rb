class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.find do |stocked_item|
        item == stocked_item[0]
      end != nil
      @inventory[item]
    else
      return 0
    end
  end

  def stock(new_item, amount)
    if @inventory[new_item] == nil
      @inventory[new_item] = amount
    else
      @inventory[new_item] += amount
    end
  end
end
