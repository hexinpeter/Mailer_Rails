class UserMailer < ApplicationMailer
  default from:"peterdottest@yahoo.com"
  # default from:"xinliangpeter@gmail.com"
  default subject:'test'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send.subject
  #
  def send_to()
    @greeting = "Hi"

    mail to: "hexinpeter@gmail.com"
  end
end
