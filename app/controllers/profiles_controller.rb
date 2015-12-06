class ProfilesController < ApplicationController
  before_action :authenticate_profile!, except: :pre

  def index
    @profiles = Profile.where(location: current_profile.location)
                       .where.not(id: current_profile.id)
                       .where.not(native: current_profile.native)
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def pre
  end

  def edit
    @profile = current_profile
  end

  def update
    @profile = current_profile

    if @profile.update(profile_params)
      redirect_to :profiles, notice: "Profile was successfully updated"
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :description, :native, :location_id, :picture)
  end
end
