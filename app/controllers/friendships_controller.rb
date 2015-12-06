class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new
    @friendship.requester_id = current_profile.id
    @friendship.requestee_id = params[:requestee_id]

    if @friendship.save
      flash[:notice] = "Friendship requested."
      redirect_to root_url
    else
      flash[:error] = "Unable to add friend."
      redirect_to root_url
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.update(accepted: true)
      if @friendship.save
        redirect_to root_url, :notice => "Successfully accpeted friendship!"
      else
        redirect_to root_url, :notice => "Sorry! Could not accept friendship!"
      end
    end
end
