module SessionsHelper
  def login(user)
    session[:name] = user.name
  end

  def current_user
    if @current_user.nil?
      @current_user = User.find_by(name: session[:name])
    end
    return @current_user
  end

  def signed_in?
    !current_user.nil?
  end

  def logout
    session.delete(:name)
  end
end
