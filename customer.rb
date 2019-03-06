class Customer

  attr_reader :name, :age

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
    @drunkness = 0
  end

  def how_much_money
    return @wallet
  end

end
