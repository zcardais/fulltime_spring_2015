class User < ActiveRecord::Base
	has_many :blogs
	has_many :comments

	validates :name, presence: true
	validates :email, presence: true

	extend FriendlyId
	friendly_id :name, use: :slugged
end


User.find_each(&:save)