class CurrentLocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
  end

  def create
    p "blah cu", current_user
    p "HELLO from current location create blah", params, current_user
    CurrentLocation.new(latitude: params[:lat], longitude: params[:lng])

  end
end
