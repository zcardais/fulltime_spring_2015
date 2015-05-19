class Actor < ActiveRecord::Base
	has_many :movies
	belongs_to :genre

	validates :name, presence: true
	validates :bio, length: {maximum: 500}
	validates :name, uniqueness: true
end
