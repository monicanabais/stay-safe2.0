class UsersController < ApplicationController

  def index
    @friends = current_user.friends
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @users = User.where(sql_query, query: "%#{params[:query]}%") - @friends - [current_user]
    elsif params[:query] && params[:query].empty?
      @users = User.all - @friends - [current_user]
    else
      @users = []
    end
  end

  def show
    @user = current_user
  end
end
