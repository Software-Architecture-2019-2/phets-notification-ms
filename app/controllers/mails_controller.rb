class MailsController < ApplicationController
  def send_mail
    UserMailer.new_mail(email_params)
  end

  private

    def email_params
      params.require(:email).permit(:user_id,:user_mail, :mail_subject, :mail_body)
    end
end
