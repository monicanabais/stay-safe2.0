class FriendshipsController < ApplicationController
  before_action :set_friend, only: [:destroy, :update, :index]

  def index
    @friends = current_user.friends
  end

  def update
    friend.update!(friendship_params)
    redirect_to friend
  end

  def destroy
    current_user.remove_friend(@friend)
    head :no_content
  end



  private

  def set_friend
    @friend = current_user.friends.find(params[:id])
  end

  def friendship_params
    params.require(:friendship).permit(:relationship)
  end
end
