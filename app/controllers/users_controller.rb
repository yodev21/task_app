class UsersController < ApplicationController
  skip_before_action :login_check, only:[:new,:create]
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to tasks_path, notice: "新規登録が完了しました！"
    else
      flash.now[:danger] = "登録に失敗しました！"
      render :new
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

  def set_params
    @user = User.find(params[:id])
  end
end
