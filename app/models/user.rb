class User < ApplicationRecord
	has_many :lookbooks

	has_secure_password

	validates :username, :email, uniqueness: true
end
