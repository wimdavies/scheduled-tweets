# email:string
# password_digest:string
# 
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  # uses bcrypt to encrypt passwords
  has_secure_password

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'invalid email address provided' }
  validates :password, presence: true, length: {minimum: 6, maximum: 30}
end
