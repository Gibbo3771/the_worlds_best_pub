require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < Minitest::Test

    def setup
        @drink = Drink.new('Whisky', 5, 8)
    end

    def test_get_name
        assert_equal("Whisky", @drink.name)
    end

    def test_get_price
        assert_equal(5, @drink.price)
    end

    def test_set_price
        assert_equal(5, @drink.price)
        @drink.price = 10
        assert_equal(10, @drink.price)
    end

end
