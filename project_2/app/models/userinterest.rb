class Userinterest < ActiveRecord::Base
	belongs_to :interest
    belongs_to :user
end
