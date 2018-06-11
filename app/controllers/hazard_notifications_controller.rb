class HazardNotificationsController < ApplicationController

  def index
    @my_hazard_notifications = HazardNotification.where(user: current_user, notifiee: current_user)
    @friend_hazard_notifications = HazardNotification.where(notifiee: current_user)
  end

end
