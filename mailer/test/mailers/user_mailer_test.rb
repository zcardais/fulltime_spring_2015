require 'test_helper'

# Preview all emails at http://localhost:3000/rails/mailers/user_mailer

class UserMailerPreview < ActionMailer::Preview
	def user_mail_preview
		UserMailer.welcome_email(User.first)
	end
end

class UserMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
end
