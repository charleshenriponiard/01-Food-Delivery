
require 'pry-byebug'
require_relative '../views/order_view'

class OrdersController
  def initialize( meal_repository, employee_repository, customer_repository, order_repository)
    @meal_repository = meal_repository
    @employee_repository = employee_repository
    @customer_repository = customer_repository
    @order_repository = order_repository
    @view = OrderView.new
  end


  def list_undelivered_orders
    orders = @order_repository.undelivered_orders
    @view.display_undelivered_orders(orders)
  end

  def add
    meal_id = @view.ask_meal_id_to_user
    meal_id = @meal_repository.find(meal_id)
    customer_id = @view.ask_customer_id_to_user
    customer_id = @customer_repository.find(customer_id)
    employee_id = @view.ask_employee_id_to_user
    employee_id = @employee_repository.find(employee_id)
    order = Order.new(customer: customer_id, employee: employee_id, meal: meal_id )
    @order_repository.add(order)
  end

  def list_my_orders(employee)
    orders = @order_repository.undelivered_orders.select { |order| order.employee == employee}
    @view.display_undelivered_orders_by_employee(orders)
  end

  def mark_as_delivered(employee)
    order = @view.ask_order_id_to_user
    order_select = @order_repository.undelivered_orders
    app = order_select.select { |order|}

  end


end
