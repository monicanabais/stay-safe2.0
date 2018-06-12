class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:destroy]

  def index
    @friendships = Friendship.all
    @friends = current_user.friends
  end

  def destroy
    @user = @friendship.user
    @friendship.destroy
    redirect_to friendships_path
  end

  private

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end
end
