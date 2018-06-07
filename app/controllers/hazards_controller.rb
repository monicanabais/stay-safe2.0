class HazardsController < ApplicationController
  def index
    @hazards = Hazard.near([@current_location.latitude, @current_location.longitude], 10)
  end
end
