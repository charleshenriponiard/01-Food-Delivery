require 'pry-byebug'
require_relative '../views/session_view'

class SessionsController

  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionView.new
  end

  def sign_in
    username = @view.input_user_username
    password = @view.input_user_password
    user = @employee_repository.find_by_username(username)
      while user.password != password do
        @view.error
        password = @view.input_user_password
      end
    @view.welcome(username)
  end
end
