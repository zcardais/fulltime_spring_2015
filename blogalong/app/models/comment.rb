class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :blog

	validates :comment_text, presence: true
end
