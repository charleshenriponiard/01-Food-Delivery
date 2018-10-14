
require 'pry-byebug'
require_relative '../views/customer_view'


class CustomersController

  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomerView.new
  end

  def list
    customers = @customer_repository.all
    @view.display(customers)
  end

  def add
    user_name = @view.ask_user_name
    user_address = @view.ask_user_address
    customer = Customer.new(name: user_name, address: user_address)
    @customer_repository.add(customer)
  end


end
