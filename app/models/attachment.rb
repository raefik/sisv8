class Attachment < ActiveRecord::Base
	has_attached_file :attach,
                  :url  => "/assets/attachments/:id/:basename.:extension",
                  :path => ":rails_root/public/assets/attachments/:id/:basename.:extension"

validates_attachment_presence :attach
validates_attachment_size :attach, :less_than => 9.megabytes
validates_attachment_content_type :attach, :content_type => ['image/jpeg', 'image/png',
									 'application/pdf','application/vnd.ms-excel',     
						             'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
						             'application/msword', 
						             'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 
						             'text/plain'
						         ]						         
end
