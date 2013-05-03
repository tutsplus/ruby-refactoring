class Person
  attr_reader :first_name, :last_name

  def initialize first_name, last_name
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    first_name + " " + last_name
  end
end

class MalePerson < Person
  def gender
    "M"
  end
end

class FemalePerson < Person
  def gender
    "F"
  end
end
