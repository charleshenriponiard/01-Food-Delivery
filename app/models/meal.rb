require 'pry-byebug'

class Meal
  attr_reader :name, :price
  attr_accessor :id

  def initialize(properties = {})
    @id = properties[:id]
    @name = properties[:name]
    @price = properties[:price]
  end
end
