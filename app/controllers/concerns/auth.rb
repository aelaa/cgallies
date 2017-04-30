module Auth
  def force_login(user)
    session[:user] = user.id
  end

  def login(login, password)
    logout if current_user
    user = User.find_by_login(login)
      &.authenticate(password)
    if user
      session[:user] = user.id
      user
    end
  end

  def logout
    session[:user] = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def current_admin
    @current_admin ||= @current_user&.admin? ?
      @current_user :
      User.admins.find_by(id: session[:user])
  end
end
