class ChangeRequest < ApplicationRecord
  belongs_to :user
  belongs_to :website
  has_secure_token
end
