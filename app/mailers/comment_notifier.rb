class CommentNotifier < ApplicationMailer
	default from: 'cpeak@psrc.org'

	def send_comment_email(admin)
		@admin = admin
		mail( to: @admin.email, subject: 'New comment posted' )
	end
end
