require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Phil Mitchell", 30, 50)
    @customer2 = Customer.new("Sonia", 17, 20)
  end

  def test_customer_name
    assert_equal("Phil Mitchell", @customer1.name)
    assert_equal("Sonia", @customer2.name)
  end

  def test_customer_age
    assert_equal(30, @customer1.age)
    assert_equal(17, @customer2.age)
  end

  def test_customer_wallet
    assert_equal(50, @customer1.how_much_money)
    assert_equal(20, @customer2.how_much_money)
  end
end
