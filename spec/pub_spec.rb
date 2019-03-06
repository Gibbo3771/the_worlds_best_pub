require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup()
    @drinks =
    10.times do
      @drinks.push(Drink.new("Whisky", 5, 8))
      @drinks.push(Drink.new("Beer", 3, 5))
      @drinks.push(Drink.new("Coke", 2, 0))
    end
    @pub = Pub.new("Queen Vic", *@drinks)
  end

  def test_get_pub_name
    assert_equal("Queen Vic", @pub.name)
  end

  def test_get_pub_stock
    assert_equal(@drinks, @pub.drinks)
  end

  def test_buy_a_drink
    @customer1.buy_drink(@drinks.name("Whisky"))
    assert_equal(105, @pub.till_float_balance)
    assert_equal(29, @pub.stock_count)
    assert_equal(45, @customer1.how_much_money)
    assert_equal(8, @customer1.drunkness)
  end

end
