class UserMailer < ApplicationMailer
	default from: 'peakblog@example.com'

	def welcome_email(user)
		@user = user
		@url = 'http://peakblog.herokuapp.com'
		mail(to: @user.email, subject: 'Welcome to PeakBlog')
	end
end
