class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map {|truck| truck.name}
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.check_stock(item) > 0
    end
  end

  def sorted_item_list
    list = []
    @food_trucks.each do |truck|
      truck.inventory.keys.each {|key| list << key.name}
    end
    list.uniq.sort
  end

  def total_inventory
    totals = {}
    sorted_item_list.each do |item|
      totals[item] = 0
    end
    @food_trucks.each do |truck|
      truck.inventory.keys.each do |key|
        totals[key.name] += truck.inventory[key]
      end
    end

  end

end
