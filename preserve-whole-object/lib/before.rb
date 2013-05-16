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

  def contain? name, price, date
    ! find(name,price,date).nil?
  end

  def <<(item)
    @items << item
  end

  def find name, price, date
    @items.find { |item| item.name == name &&
                         item.price == price &&
                         item.date == date }
  end
end
