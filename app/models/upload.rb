class Upload < ActiveRecord::Base
  validates_presence_of :company, :person, :file
  attr_reader :file
  attr_accessible :file, :company, :person, :description
  
  UPLOAD_DIR = File.join(RAILS_ROOT, 'uploads')
  
  def file=(uploaded_file)
    @file = uploaded_file # for validations
    @uploaded_file = uploaded_file    
    self.original_filename = uploaded_file.original_filename
    self.content_type = uploaded_file.content_type
  end
  
  def after_create
    update_attribute :filename, "#{id}#{File.extname(original_filename)}"
    if @uploaded_file.instance_of?(Tempfile)
      FileUtils.copy(@uploaded_file.local_path, filename_full_path)
    else
      File.open(self.filename_full_path, "wb") { |f| f.write(@uploaded_file.read) }
    end
    UploadNotifier.deliver_notify_webmaster(self)
  end
  
  def after_destroy
    if File.exists?(filename_full_path)
      File.delete(filename_full_path)
    end
  end
  
  def filename_full_path
    File.join(UPLOAD_DIR, filename)
  end
  
  
  def status
    File.exists?(filename_full_path)
  end
  
end
