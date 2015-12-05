class ProfilesController < ApplicationController
  before_action :authenticate_profile!

  def index
    @profiles = Profile.where(location: current_profile.location)
                       .where.not(id: current_profile.id)
                       .where.not(native: current_profile.native)
  end

  def show
    @profile = Profile.find(params[:id])
  end
end
