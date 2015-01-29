class Interest < ActiveRecord::Base
	has_many :userinterests
	has_many :users, :through => :userinterests
end
