class Customer
  attr_reader :name, :address
  attr_accessor :id

  def initialize (properties = {})
    @id = properties[:id]
    @name = properties[:name]
    @address = properties[:address]
  end
end
