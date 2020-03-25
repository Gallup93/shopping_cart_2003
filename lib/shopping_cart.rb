class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
    @is_full = false
    @details = {name: @name, capacity: @capacity}
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    number = 0
    @products.each do |product|
      number += product.quantity
    end
    number
  end

  def is_full?
    if total_number_of_products >= @capacity
      true
    else
      false
    end
  end

  def details
    @details
  end


end
