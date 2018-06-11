class HazardNotificationsController < ApplicationController
  before_action :set_notifications

  def index
    @friend_hazard_notifications = HazardNotification.where(notifiee: current_user)
  end

  def mark_as_safe
    @my_hazard_notifications.each do |my_hazard_notification|
      # my_hazard_notification.where(user: current_user, notifiee: current_user)
      my_hazard_notification.update(status: :inactive)
      my_hazard_notification.user.update(state: :safe)
    end
    current_user.friends do |friend|
      notification = HazardNotification.where(notifiee: friend)
      notification.update(status: :inactive)
    end
    redirect_to hazard_notifications_path
  end

  private

  def set_notifications
    @my_hazard_notifications = HazardNotification.active.where(user: current_user, notifiee: current_user)
  end



end
