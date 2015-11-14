class StudEdu < ActiveRecord::Base
belongs_to :user
belongs_to :prog_code
belongs_to :prog_name
belongs_to :faculty
belongs_to :student_class
belongs_to :kampu

def self.search(search)
		if search
		#includes(:faculty,:user=>[:role,:stud_profiles]).find(:all,:conditions=>['student_class_id =?',"#{search}"])
	  	 includes(:user,:faculty).find(:all,:conditions=>['user_id =?',"#{search}"])
	   else
	  #find(:all,:conditions=>["role_id=?",3])
	  includes(:user,:faculty,:kampu).find(:all)
	   end
end
end
