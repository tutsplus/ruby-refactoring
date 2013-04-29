class Client
  attr_reader :department, :clerk

  def initialize department, clerk
    @department = department
    @clerk = clerk
  end
end

class Manager
  attr_accessor :department
end

class Clerk
  attr_reader :department

  def initialize(department)
    @department = department
  end

  def manager
    department.manager
  end
end

class Department
  attr_reader :manager
  def initialize manager
    @manager = manager

    manager.department = self
  end
end
