class LogBook < ActiveRecord::Base
belongs_to :user
belongs_to :stud_profile

	has_attached_file :upload,
                  :url  => "/assets/log_books/:id/:basename.:extension",
                  :path => ":rails_root/public/assets/log_books/:id/:basename.:extension"


validates_attachment_size :upload, :less_than => 9.megabytes
validates_attachment_content_type :upload, :content_type => ['image/jpeg', 'image/png',
									 'application/pdf','application/vnd.ms-excel',     
						             'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
						             'application/msword', 
						             'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 
						             'text/plain'
						         ]	
end
