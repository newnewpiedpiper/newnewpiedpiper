module SessionsHelper
    # Logs in the given user.
  def log_in(user)
    puts "initial"
    session[:user_id] = user.id
  end
  
end
