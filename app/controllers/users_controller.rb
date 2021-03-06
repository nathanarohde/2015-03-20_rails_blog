class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Welcome to the site!'
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:alert] = 'Error creating profile.'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :phone, :password, :password_confirmation, :photo)
  end

end
