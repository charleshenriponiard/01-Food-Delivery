class SessionView

  def input_user_username
    puts "username ?"
    gets.chomp
  end

  def input_user_password
    puts "password ?"
    gets.chomp
  end

  def welcome(username)
    puts "Welcome #{username}"
  end

  def error
    puts "Wrong credentials... Try again!"
  end
end
