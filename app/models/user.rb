class User < ApplicationRecord
  has_secure_password

  has_many :pokemon_selections

  validates_presence_of :name, :last_name
  validates :email, uniqueness: true, length: {maximum: 128}
end
