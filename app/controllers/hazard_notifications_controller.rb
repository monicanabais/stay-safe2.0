class HazardNotificationsController < ApplicationController
  before_action :set_notifications

  def index
    @friend_hazard_notifications = HazardNotification.where(user: current_user.friends, notifiee: current_user)
  end

  def mark_as_safe
    @my_hazard_notifications.each do |my_hazard_notification|
      my_hazard_notification.update(status: :inactive)
      my_hazard_notification.user.update(state: :safe)
    end
    friends_notifications
    redirect_to hazard_notifications_path
  end
    #   notification = HazardNotification.where(notifiee: friend)
    #   notification.update(status: :inactive)
    # @friend_hazard_notifications = HazardNotification.active.where(user: current_user.friends, notifiee: current_user)
    # @friend_hazard_notifications.each do |friend_hazard_notification|
    #   friend_hazard_notification.update(status: :inactive)

  def friends_notifications
    @friend_hazard_notifications = HazardNotification.where(user: current_user, notifiee: current_user.friends)
    @friend_hazard_notifications.each do |friend_notification|
      friend_notification.update(status: :inactive)
    end
  end


  private

  def set_notifications
    @my_hazard_notifications = HazardNotification.active.where(user: current_user, notifiee: current_user)
  end

end
