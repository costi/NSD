class UploadNotifier < ActionMailer::Base
  default_url_options[:host] = 'www.nationalsignsanddesign.com' 
  
  def notify_webmaster(upload)
    subject    "[nationalsignsanddesign.com upload] #{upload.original_filename}"
    recipients 'National Signs And Design <artwork@nationalsignsanddesign.com>'
    from       "National Signs And Design <artwork@nationalsignsanddesign.com>"
    bcc        'costi@apluscompuservices.com'
    body       :upload => upload
  end
end
