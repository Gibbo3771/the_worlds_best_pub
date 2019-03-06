class Customer

  attr_reader :name, :age, :drunkness

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
    @drunkness = 0
  end

  def how_much_money
    return @wallet
  end

  def pay_for_drink(drink)
    @wallet -= drink.price
    @drunkness += drink.strength
  end

  # def sell_drink(drink)
  #   @till += drink.price
  #   remove_drink_from_stock(drink)
  # => return drink
  # end

  def buy_drink(drink)
    drink = @pub.sell_drink
    @customer.pay_for_drink(drink)
  end

end
