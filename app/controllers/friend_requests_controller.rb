class FriendRequestsController < ApplicationController
  before_action :set_friend_request, except: [:index, :create, :new]
  before_action :user

  def user
    @user = current_user
  end

  def index
    @incoming = FriendRequest.where(friend: current_user).where(accepted: false)
    @outgoing = current_user.friend_requests.where(accepted: true)
  end

  def new
    @friend_request = FriendRequest.new
  end

  def create
    friend = User.find(params[:user_id])
    @friend_request = current_user.friend_requests.new(friend: friend)

    if @friend_request.save
      # render :index, status: :created, location: @friend_request
      redirect_to user_path(current_user), notice: "Friend request sent"
    else
      redirect_to user_path(current_user), alert: "Friend request already sent"
    end
  end

  def edit
  end

  def update
    @friend_request.update(accepted: true)
    @friend_request.accept
    redirect_to friend_requests_path
  end

  def read
    @friend_request.update(read: true)
    redirect_to friend_requests_path
  end

  def read_by_friend
    @friend_request.update(read_by_friend: true)
    redirect_to friend_requests_path
  end

  def destroy
    @friend_request.destroy
    redirect_to friend_requests_path
  end

  private

  def set_friend_request
    @friend_request = FriendRequest.find(params[:id] || params[:friend_request_id])
  end
end
