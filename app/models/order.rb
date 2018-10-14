require_relative 'meal'
require_relative 'employee'
require_relative 'customer'
require 'pry-byebug'

class Order

  attr_accessor :id, :delivered, :meal, :employee, :customer

  def initialize(properties = {})
    @id = properties[:id]
    @delivered = (properties[:delivered] || false)
    @meal = properties[:meal]
    @employee = properties[:employee]
    @customer = properties[:customer]
  end

  def delivered?
    @delivered
  end

  def deliver!
    @delivered = true
  end

end
