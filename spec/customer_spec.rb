require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Phil Mitchell", 30)
    @customer2 = Customer.new("Sonia", 17)
  end

  def test_customer_name
    assert_equal("Phil Mitchell", @customer1.name)
    assert_equal("Sonia", @customer2.name)
  end

end
