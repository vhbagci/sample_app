class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	#raise params[:id].inspect
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      flash[:success] = "Account created successfully. *** Welcome to the Sample App! ***"
  		redirect_to user_path(@user)
  	else
  		render 'new'
  	end
  end
end
