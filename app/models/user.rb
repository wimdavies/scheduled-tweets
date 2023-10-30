# email:string
# pasword_digest:string
# 
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  # uses bcrypt to encrypt passwords
  has_secure_password

end
