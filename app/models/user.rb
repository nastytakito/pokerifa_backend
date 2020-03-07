class User < ApplicationRecord
  has_secure_password

  validates_presence_of :name, :last_name
  validates :email, uniqueness: true, length: {maximum: 128}
end
