class HazardsController < ApplicationController
  def index
    @hazards = Hazard.all
        @markers = @hazards.map do |hazard|
      {
        lat: hazard.latitude,
        lng: hazard.longitude,
        infoWindow: { content: render_to_string(partial: "/hazards/map_box", locals: { hazard: hazard }) }
      }
    end
  end
end
