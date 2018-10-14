require 'pry-byebug'

class MealsView

  def ask_user_name_meal
    puts "Add a new meal"
    return gets.chomp
  end

  def ask_user_price_meal
    puts "which price ?"
    return gets.chomp.to_i
  end

  def display(meals)
    meals.each do |meal|
      puts "#{meal.id}) #{meal.name} (#{meal.price} €)"
    end
  end



end
