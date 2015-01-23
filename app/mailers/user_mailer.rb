class UserMailer < ApplicationMailer
  default from:"petersendicate@gmail.com"
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send.subject
  #
  def send_to(recipient, subject, body)
    @body = body

    mail to: recipient, subject: subject
  end

end
