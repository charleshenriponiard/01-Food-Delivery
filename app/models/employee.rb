class Employee
  attr_reader :username, :password, :role
  attr_accessor :id

  def initialize(properties = {})
    @id = properties[:id]
    @username = properties[:username]
    @password = properties[:password]
    @role = properties[:role]
  end

  def manager?
    self.role == "manager"
  end

  def delivery_guy?
    self.role == "delivery_guy"
  end

end
