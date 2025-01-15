class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def edit
    # User is already set in before_action
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Profile updated successfully!'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = current_user  # Assuming you are using Devise for authentication
  end

  def user_params
    # Permitting the `dance_ids` array to be saved to the user's dances
    params.require(:user).permit(:name, :gender, :location, :birthday, dance_ids: [])
  end
end
