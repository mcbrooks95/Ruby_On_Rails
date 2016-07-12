class User < ActiveRecord::Base
	has_many :messages
	has_many :responses
    has_secure_password

end
