class Cart
  attr_reader :products

  def initialize products
    @products = products.map { |product| Product.new *product }
  end

  def total
    products.inject(0) { |sum, product| sum + product.price }
  end

end

class Product
  attr_reader :name, :color, :price

  def initialize name, color, price
    @name  = name
    @color = color
    @price = price
  end
end
