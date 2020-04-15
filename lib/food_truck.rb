class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.any?{|stocked_item| item.name == stocked_item[:name]}
      require "pry";binding.pry
    else
      return 0
    end
  end
end
