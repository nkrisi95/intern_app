class ProfilesController < ApplicationController
  before_action :find_params, only: [:create, :new, :update, :show]

  def index
  end

  def show
  end

  def create
    @profile = @user.build_profile(profile_params)
    if @profile.save
      redirect_to user_path(params[:user_id]), notice: "You've successfully updated your user profile!"
    else
      render action: :new
    end
  end

  def new
    @profile = @user.build_profile
  end

  def update
  end

  def edit
  end

  private

  def find_params
    @user = User.find(params[:user_id])
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
  end
end
