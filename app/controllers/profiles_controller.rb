class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update]

  def index
    @profiles = Profile.all
  end

  def show
    @users = User.all
    @user = current_user
    @profile = current_user.profile
  end

  # Method to assign a dance to the user profile
  def select_dance(dance_name)
    dance = Dance.find_or_create_by(name: dance_name)
    self.dances << dance unless self.dances.include?(dance)
    dance
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      redirect_to profile_path(@profile), notice: 'Profile updated successfully!'
    else
      render :edit
    end
  end

  private

  def set_profile
    # Find the profile associated with the current logged-in user
    @profile = current_user.profile || current_user.create_profile
  end

  def profile_params
    params.require(:profile).permit(:name, :age, :dance_style, :bio, dance_ids: [])
  end
end
