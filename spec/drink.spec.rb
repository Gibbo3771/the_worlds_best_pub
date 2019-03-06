require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < Minitest::Test

    def setup
        @drink = Drink.new('name', 5)
    end

    def test_get_name
        assert_equal('name', @drink.get_name())
    end

end