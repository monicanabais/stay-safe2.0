class HazardNotificationsController < ApplicationController

  def index
    @hazard_notifications = HazardNotification.where(user: current_user)
  end

end
