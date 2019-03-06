class Pub

  attr_reader :name, :drinks

  def initialize(name, *drinks)
    @name = name
    @drinks = *drinks
    @till = 100

  end

  def stock_count
    return @drinks.length
  end

  def till_balance
    return @till
  end

  def sell_drink(drink)

  end
end
