class User < ActiveRecord::Base

 validates :username, presence: true, uniqueness: true
 validates :employee_type, presence: true
 has_secure_password

end
