class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity[0..1].to_i
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

  def percentage_occupied
    percent = 0

    @products.each do |product|
      percent += product.quantity
    end

    ((percent / @capacity) * 100).round(2)
  end


end
