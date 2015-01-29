require 'bcrypt'

class User < ActiveRecord::Base
	has_secure_password
	has_many :boards
	has_many :enrollments
    has_many :courses, :through => :enrollments
    has_many :userinterests
    has_many :interests, :through => :userinterests
    has_many :userskils
    has_many :skills, :through => :userskills

	def self.confirm(email_param, password_param)
		user = User.find_by({email: email_param})
		user.authenticate(password_param)
	end

	validates_confirmation_of :password
  	validates_presence_of :password_digest
	validates_presence_of :email
	validates_presence_of :password_digest
end
