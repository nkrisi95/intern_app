class ProfilesController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def new
    @user = User.find( params[:user_id] )
    @profile = @user.build_profile
  end

  def update
  end

  def edit
  end

  private

  def user_params
  end

  def find_user_params
  end
end
