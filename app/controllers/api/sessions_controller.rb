class Api::SessionsController < ApplicationController
  def create
    if user = login(params[:login], params[:password])
      redirect_to root_path
    else
      render :new, locals: { errors: 'Пользователь не найден' }
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
