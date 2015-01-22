# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Rails.application.configure do
#   config.action_mailer.smtp_settings = { 
#     address: "smtp.gmail.com",
#     port: 587,
#     domain: "petersendicate@gmail.com", 
#     authentication: "plain",
#     user_name: "petersendicate", 
#     password: ENV["email_passwd"], 
#     enable_starttls_auto: true
#   }
# end