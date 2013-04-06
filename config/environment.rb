# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AcrossEc::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
  

ActionMailer::Base.smtp_settings = {
	:enable_starttls_auto => true,
    :address => "smtp.gmail.com",
    :port => 587,
    :authentication => 'plain',
    :user_name => 'across.ec',
    :password => 'across_ec123'
  }