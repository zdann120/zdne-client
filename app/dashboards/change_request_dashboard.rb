require "administrate/base_dashboard"

class ChangeRequestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    website: Field::BelongsTo,
    id: Field::Number,
    token: Field::String,
    old_content: Field::Text,
    new_content: Field::Text,
    details: Field::Text,
    urgent: Field::Boolean,
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
    :website,
    :id,
    :token,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :website,
    :id,
    :token,
    :old_content,
    :new_content,
    :details,
    :urgent,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :website,
    :token,
    :old_content,
    :new_content,
    :details,
    :urgent,
  ].freeze

  # Overwrite this method to customize how change requests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(change_request)
  #   "ChangeRequest ##{change_request.id}"
  # end
end
