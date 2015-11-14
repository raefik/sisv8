class Photo < ActiveRecord::Base
	attr_accessible :image,:user_id
	
	belongs_to :user
	has_attached_file :image,
                  :url  => "/assets/photos/:id/:basename.:extension",
                  :path => ":rails_root/public/assets/photos/:id/:basename.:extension"

validates_attachment_presence :image
validates_attachment_size :image, :less_than => 9.megabytes
validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png',
									 'application/pdf','application/vnd.ms-excel',     
						             'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
						             'application/msword', 
						             'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 
						             'text/plain'
						         ]		
end
