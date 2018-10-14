require 'pry-byebug'
require_relative '../views/meals_view'
require_relative '../models/meal'

class MealsController

  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def list
    meals = @meal_repository.all
    @view.display(meals)
  end

  def add
    meal = @view.ask_user_name_meal
    price = @view.ask_user_price_meal
    meal = Meal.new( name: meal, price: price)
    @meal_repository.add(meal)
  end

end
