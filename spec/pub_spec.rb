require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup()
    @whisky = Drink.new("Whisky", 5)
    @beer = Drink.new("Whisky", 3)
    @coke = Drink.new("Whisky", 2)
    @pub = Pub.new("Queen Vic", @whisky, @beer, @coke)
  end

  def test_get_pub_name
    assert_equal("Queen Vic", @pub.name)
  end

  def test_get_pub_stock
    assert_equal([@whisky, @beer, @coke], @pub.drinks)
  end
end
