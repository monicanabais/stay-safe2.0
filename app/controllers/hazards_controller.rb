class HazardsController < ApplicationController
  def index
    @hazards = Hazard.all
  end
end
