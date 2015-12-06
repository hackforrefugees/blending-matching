class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new
    @friendship.requester_id = current_profile.id
    @friendship.requestee_id = params[:requestee_id]

    if @friendship.save
      flash[:notice] = "Friendship requested."
      redirect_to :back
    else
      flash[:error] = "Unable to add friend."
      redirect_to :back
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.update(accepted: true)
      if @friendship.save
        redirect_to :back, :notice => "Successfully accepted friendship!"
      else
        redirect_to :back, :notice => "Sorry! Could not accept friendship!"
      end
    end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to :back
  end
end
