class Genre < ActiveRecord::Base
	has_many :actors
	has_many :movies

	# name field can't be blank
	validates :name, presence: true
	# name field must have 3 or more characters
	validates :name, length: {minimum: 3}
end
