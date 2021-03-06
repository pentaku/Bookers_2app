class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end
end

private
  # ストロングパラメータ
  def user_params
    params.require(:user).permit(:name)
  end