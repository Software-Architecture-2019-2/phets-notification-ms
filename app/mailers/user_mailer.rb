class UserMailer < ApplicationMailer

  def new_mail(dates)
    @body = dates.body
    mail(:to => dates.email, :subject => dates.subject)
  end
end
