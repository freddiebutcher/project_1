class User < ApplicationRecord
  has_secure_password
  # # # Validations -- see the Rails Guide
  validates :email_address, :presence => true, :uniqueness => true
end
