class Pub

  attr_reader :name, :drinks

  def initialize(name, *drinks)
    @name = name
    @drinks = *drinks
    @till = 100

  end

  def get_drink_by_type(type)
    @drinks.each do |drink|
      return drink if drink.name == type
    end
  end

  def stock_count
    return @drinks.length
  end

  def till_balance
    return @till
  end

  def remove_drink_from_stock(drink)
    return @drinks.delete(drink)
  end

  def sell_drink(type)
    drink = get_drink_by_type(type)
    @till += drink.price
    return remove_drink_from_stock(drink)
  end
end
