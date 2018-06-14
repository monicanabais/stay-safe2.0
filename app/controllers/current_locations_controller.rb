class CurrentLocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    current_user.current_locations.destroy_all
    @location = CurrentLocation.create(latitude: params[:lat], longitude: params[:lng], user: current_user)
    render json: @location
  end


end
