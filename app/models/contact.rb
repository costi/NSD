class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :subject, :email_address, :phone_number, :message => 'is required'
  validates_format_of :email_address, :with => REGEX_EMAIL_VALIDATOR
 end
