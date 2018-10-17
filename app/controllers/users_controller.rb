class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    redirect_to(user_path)
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
