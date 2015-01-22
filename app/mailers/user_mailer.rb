class UserMailer < ApplicationMailer
  class << self; attr_accessor :count end

  # default from:"peterdottest@yahoo.com"
  default from:"petersendicate@gmail.com"
  # default from:"xinliangpeter@gmail.com"
  default subject:'test'
  
  @count = 1
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send.subject
  #
  def send_to()
    @greeting = "Hi"
    @count = UserMailer.count
    mail to: "hexinpeter@gmail.com"
    UserMailer.count += 1
  end

end
