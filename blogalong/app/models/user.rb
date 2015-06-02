class User < ActiveRecord::Base
	has_many :blogs
	has_many :comments

	validates :name, presence: true
	validates :email, presence: true
end
