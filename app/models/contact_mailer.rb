class ContactMailer < ActionMailer::Base
  def autoreply(contact)
    subject    'Thank you for your interest'
    recipients contact.email_address
    from       'National Signs And Design <artwork@nationalsignsanddesign.com>'
    body       :contact => contact
  end

  def notify_webmaster(contact)
    subject    "[nationalsignsanddesign.com contact] #{contact.subject}"
    recipients 'National Signs And Design <artwork@nationalsignsanddesign.com>'
    from       "#{contact.first_name} #{contact.last_name} <#{contact.email_address}>"
    body       :contact => contact
  end
  

end
