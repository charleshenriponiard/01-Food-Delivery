# TODO: implement the router of your app.

require 'pry-byebug'

class Router

  def initialize(meals_controller, sessions_controller, orders_controller)
    @meals_controller = meals_controller
    @sessions_controller = sessions_controller
    @orders_constroller = orders_controller
  end

  def run
    puts " > connection"
    @sessions_controller.sign_in
    loop do
      print_action
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_action
    puts "__"*20
    puts "> what do you want to do ? "
    puts "1 - List"
    puts "2 - Add"
    puts "3 - Exit"
    puts "__"*20
  end

  def dispatch(action)
    case action
      when 1 then @meals_controller.list
      when 2 then @meals_controller.add
      when 3 then exit
    end
  end
end
