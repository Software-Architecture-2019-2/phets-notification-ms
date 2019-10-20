class EmailsController < ApplicationController

  # POST /emails
  def create
    @email = Email.new(email_params)
    if @email.save
      # Deliver the signup email
      MailNotifierMailer.send_email(@email).deliver
      render json: {"data": "Correo enviado"}
    else
      render json: {"data": "Envio no fue exitoso"}
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def email_params
      params.require(:email).permit(:user_id, :user_email, :mail_subject, :mail_body)
    end
end
