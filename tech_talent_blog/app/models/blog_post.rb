class BlogPost < ActiveRecord::Base

	has_many :comments
	
end
