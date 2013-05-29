class Item
  attr_reader :name, :price, :date

  def initialize name, price, date
    @name = name
    @price = price
    @date = date
  end
end

class Store
  def initialize
    @items = []
  end

  def contain? item
    ! find(item).nil?
  end

  def <<(item)
    @items << item
  end

  def find item
    @items.find { |i| i.name  == item.name &&
                      i.price == item.price &&
                      i.date  == item.date }
  end
end
