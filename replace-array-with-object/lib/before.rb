class Cart
  attr_reader :products

  def initialize products
    @products = products
  end

  def total
    products.inject(0) { |sum, product|
      sum + product[2]
    }
  end

end
