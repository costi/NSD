class ClickToTalk < ActiveRecord::Base
  attr_accessible :when, :phone_number, :phone_ext
  WHEN_OPTIONS = ['Right Now', 'in 1 minute', 'in 3 minutes', 'in 5 minutes']
  validates_presence_of :phone_number
  
  # returns the reverse DNS of the ip
  def hostname
    require 'socket'
    Socket.getaddrinfo(ip_address, nil)[0][2]
  end
  
  # phone no + extension
  def complete_phone
    phone_ext.blank? ? phone_number : "#{phone_number} Ext. #{phone_ext}"
  end
  
  
  def after_create
    ClickToTalkMailer.deliver_notify_webmaster(self)
    ClickToTalkMailer.deliver_text_message(self)
  end
end
