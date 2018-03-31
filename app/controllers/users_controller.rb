class UsersController < ApplicationController

  def new 
  end 

  def edit
  end

  def create
    @users = User.new(user_params)
    if @users.save
      # session [:user_id] = user.id
      redirect_to '/'
    else
      render 'users/new'
    end
  end

  def user_params
  params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
end

end
