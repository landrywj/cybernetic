class Project < ActiveRecord::Base
	has_many :devlogs
	has_many :tasks 
	has_many :use_cases
end
