class Skill < ActiveRecord::Base
	has_many :userskills
	has_many :users, :through => :userskills
end
