class StuEdu < ActiveRecord::Base
belongs_to :user
belongs_to :faculty
belongs_to :prog_code
belongs_to :prog_name
belongs_to :kampu
belongs_to :student_class

	def self.search(search)
		if search
	   includes(:faculty,:user=>[:role,:stud_profiles]).find(:all,:conditions=>['student_class_id =?',"#{search}"])
	  
	  
	   else
	  #find(:all,:conditions=>["role_id=?",3])
	   includes(:user=>:role).find(:all)
	   end
end
end
