require 'pry-byebug'

class CustomerView



  def display(customers)
    customers.each do |customer|
      puts "name : #{customer.name} - address : #{customer.address}"
    end
  end

  def ask_user_name
    puts "what's your name ?"
    gets.chomp
  end

  def ask_user_address
    puts "what's your address ?"
    gets.chomp
  end
end
