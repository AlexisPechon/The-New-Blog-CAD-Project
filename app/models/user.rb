class User < ApplicationRecord
    validates :email, presence: true, uniqueness: { case_sensitive: false } #Validates the User's email to check if it is valid
    validates :password, presence: true #Validates the User's password to check if it is valid
    has_secure_password
end
