class Item
  attr_reader :name, :price
  def initialize(info)
    @name = info[:name]
    @price = info[:price].gsub(/[^0-9a-z.]/i, '').to_f
  end
end
