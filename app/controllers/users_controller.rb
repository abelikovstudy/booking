class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:name, :nickname, :email, :password)
    User.create(user_params)
    redirect_to hotels_path, notice: 'Вы успешно зарегистрировались!'
  end

end
