class ProfilesController < ApplicationController
  before_action :authenticate_profile!

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end
end
