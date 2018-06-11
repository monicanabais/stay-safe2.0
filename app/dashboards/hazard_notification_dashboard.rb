require "administrate/base_dashboard"

class HazardNotificationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    hazard: Field::BelongsTo,
    notifiee: Field::BelongsTo.with_options(class_name: "User"),
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    status: Field::String,
    notifiee_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :hazard,
    :notifiee,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :hazard,
    :notifiee,
    :id,
    :created_at,
    :updated_at,
    :status,
    :notifiee_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :hazard,
    :notifiee,
    :status,
  ].freeze

  # Overwrite this method to customize how hazard notifications are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(hazard_notification)
  #   "HazardNotification ##{hazard_notification.id}"
  # end
end
