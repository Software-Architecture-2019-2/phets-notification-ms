class MailsController < ApplicationController
  def send_mail
    @email = Mail.new(email_params)
    @email.save
    MailMailer.sample_email(@email).deliver
    
  end

  private

    def email_params
      params.require(:email).permit(:user_id,:user_mail, :mail_subject, :mail_body)
    end
end
