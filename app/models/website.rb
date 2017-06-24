class Website < ApplicationRecord
  belongs_to :user
  has_secure_token
end
