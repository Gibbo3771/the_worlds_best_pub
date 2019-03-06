require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Phil Mitchell", 30, 50)
    @customer2 = Customer.new("Sonia", 17, 20)
    @drinks = []
    10.times do
      @drinks.push(Drink.new("Whisky", 5, 8))
      @drinks.push(Drink.new("Beer", 3, 5))
      @drinks.push(Drink.new("Coke", 2, 0))
    end
    @pub = Pub.new("Queen Vic", *@drinks)
  end

  def test_get_drink_by_type
    drink = @pub.get_drink_by_type("Whisky")
    assert_equal("Whisky", drink.name)
  end

  def test_get_pub_name
    assert_equal("Queen Vic", @pub.name)
  end

  def test_till_balance
    assert_equal(100, @pub.till_balance)
  end

  def test_get_pub_stock
    assert_equal(@drinks, @pub.drinks)
  end

  def test_remove_drink_from_stock
    drink = @pub.get_drink_by_type("Whisky")
    @pub.remove_drink_from_stock(drink)
    assert_equal(29, @pub.stock_count)
  end

  def test_check_if_customer_is_of_age
    age = @pub.check_if_customer_is_of_age(@customer2.age)
    assert_equal(false, age)
  end

  def test_buy_a_drink
    drink = @pub.sell_drink("Whisky")
    @customer1.pay_for_drink(drink)
    assert_equal(105, @pub.till_balance)
    assert_equal(29, @pub.stock_count)
    assert_equal(45, @customer1.how_much_money)
    assert_equal(8, @customer1.drunkness)
  end
end
