require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
class ItemTest < Minitest::Test

  def setup
    @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
  end

  def test_initialization_with_attributes
    assert_instance_of Item, @otem1
    asserrt_equal "Apple Pie (Slice)", @item2.name
    asserrt_equal 2.50, @item2.price
  end
end
