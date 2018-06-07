require "administrate/base_dashboard"

class FriendRequestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    friend: Field::BelongsTo.with_options(class_name: "User"),
    id: Field::Number,
    friend_id: Field::Number,
    relationship: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :friend,
    :id,
    :friend_id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :friend,
    :id,
    :friend_id,
    :relationship,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :friend,
    :friend_id,
    :relationship,
  ].freeze

  # Overwrite this method to customize how friend requests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(friend_request)
  #   "FriendRequest ##{friend_request.id}"
  # end
end
