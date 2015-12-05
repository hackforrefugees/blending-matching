class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new
    @friendship.requester_id = current_profile.id
    @friendship.requestee_id = params[:requestee_id]

    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to root_url
    else
      flash[:error] = "Unable to add friend."
      redirect_to root_url
    end
  end
end
