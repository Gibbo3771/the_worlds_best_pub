require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup()
    @drinks = []
    10.times do
      @drinks.push(Drink.new("Whisky", 5))
      @drinks.push(Drink.new("Beer", 3))
      @drinks.push(Drink.new("Coke", 2))
    end
    @pub = Pub.new("Queen Vic", *@drinks)
  end

  def test_get_pub_name
    assert_equal("Queen Vic", @pub.name)
  end

  def test_get_pub_stock
    assert_equal(@drinks, @pub.drinks)
  end

end
