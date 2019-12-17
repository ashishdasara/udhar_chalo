class Manager < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  # attr_accessor :password_confirmation

  validates :name,  presence: true
  validates :email, format: EMAIL_REGEX,
                    presence: true,
                    uniqueness: { case_sensitive: false }
                    
end
