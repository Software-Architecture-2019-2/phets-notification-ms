class MailNotifierMailer < ApplicationMailer
  default :from => ENV["GMAIL_USERNAME"]
    
  # send a email to the user, pass in the user object that   contains the user's email address
  def send_email(email)
      @email = email
      mail( :to => @email.user_email,
      :subject => @email.mail_subject )
  end
end
