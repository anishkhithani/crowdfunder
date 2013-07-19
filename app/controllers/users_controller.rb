class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      redirect_to root_path, :notice => "Account created"

    else
      flash[:alert] = "Try again"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
