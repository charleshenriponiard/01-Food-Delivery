class OrderView

  def display_undelivered_orders(orders)
    orders.each do |order|
      puts "order undelivered => #{order.meal.name} by #{order.employee.username} for #{order.customer.name} at  #{order.customer.address}"
    end
  end

  def display_undelivered_orders_by_employee(orders)
    orders.each do |order|
      puts "meal undelivered => #{order.customer.name} #{order.meal.name} "
    end
  end

  def ask_meal_id_to_user
    puts" give me the meal id please "
    gets.chomp.to_i
  end

  def ask_customer_id_to_user
    puts" give me the customer id please "
    gets.chomp.to_i
  end

  def ask_employee_id_to_user
    puts" give me the employee id please "
    gets.chomp.to_i
  end

  def ask_order_id_to_user
    puts" give me the order id please "
    gets.chomp.to_i
  end

end
