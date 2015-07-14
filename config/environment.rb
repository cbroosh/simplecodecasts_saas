# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
<<<<<<< HEAD
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'http://shielded-oasis-3657.herokuapp.com/',
  :enable_startstls_auto => true
=======
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],  ## Refer to key SENDGRID_USERNAME
  :password       => ENV['SENDGRID_PASSWORD'],  ## Refer to key SENDGRID_PASSWORD
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
>>>>>>> development
}