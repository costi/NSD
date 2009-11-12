class ClickToTalkMailer < ActionMailer::Base
  def notify_webmaster(click_to_talk)
    subject    "[click to talk] call: #{click_to_talk.complete_phone} #{click_to_talk.when}!"
    recipients 'National Signs And Design <artwork@nationalsignsanddesign.com>'
    from       'National Signs And Design <artwork@nationalsignsanddesign.com>'       
    bcc        'costi@apluscompuservices.com'
    body       :click_to_talk => click_to_talk
  end  
  
  def text_message(click_to_talk)
    subject    "[click to talk] call: #{click_to_talk.complete_phone} #{click_to_talk.when}!"
    recipients '6302695799@vtext.com, 7735578823@email.uscc.net'
    from       'NSD <artwork@nationalsignsanddesign.com>'
    body       "call:  #{click_to_talk.complete_phone} #{click_to_talk.when}!"
  end

end
