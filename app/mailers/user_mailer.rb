class UserMailer < ApplicationMailer

  def new_mail(email)
    @mail = email
    mail(to: @mail.user_mail, subject: @mail.mail_subject)

  end
end
