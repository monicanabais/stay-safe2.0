class HazardNotificationsController < ApplicationController

  def index
    @hazard_notifications = HazardNotification.where(user_id: current_user)
  end

  def create
    unless @hazards.empty?
      @hazard_notification.create(user_id: @current_location.user_id, hazard_id: @hazard.id)
    end
  end

end
