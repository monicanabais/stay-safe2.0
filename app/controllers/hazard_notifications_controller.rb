class HazardNotificationsController < ApplicationController
  before_action :set_notifications
  before_action :set_hazard_notification, only: :read

  def index
    @friend_hazard_notifications = HazardNotification.where(user: current_user.friends, notifiee: current_user).order(updated_at: :desc)

  end

  def mark_as_safe
    @my_hazard_notifications.each do |my_hazard_notification|
      my_hazard_notification.update(status: :inactive)
      my_hazard_notification.user.update(state: :safe)
      my_hazard_notification.update(read: true)

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
      friend_notification.update(read: false)
    end
  end

  def read
    @hazard_notification.update(read: true)
    redirect_to hazard_notifications_path
  end

  private

  def set_notifications
    @my_hazard_notifications = HazardNotification.active.where(user: current_user, notifiee: current_user)
  end

  def set_hazard_notification
    @hazard_notification = HazardNotification.find(params[:hazard_notification_id])
  end
end
