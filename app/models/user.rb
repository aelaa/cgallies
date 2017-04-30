class User < ApplicationRecord
  has_secure_password
  scope :admins, -> { where admin: true}
end
