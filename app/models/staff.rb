class Staff < ActiveRecord::Base
attr_accessible :staff_no, :staff_type_id, :gelaran_id, :name,:faculty_id,:program_id,:kampu_id, :room_no, :place, :user_id,:office_no, :hp_no, :email, :email2 , :prog_name_id
belongs_to :user
belongs_to :staff_type
belongs_to :gelaran
belongs_to :faculty
has_many :student_classes
belongs_to :prog_name
belongs_to :prog_code

belongs_to :kampu
has_many :stud_profiles
has_many :date_visits
has_many :markah_students

def self.search(search)
		if search
	  includes(:gelaran,:faculty,:staff_type,:user=>:role).find(:all,:conditions=>['staff_no like?',"#{search}"])
	  #find_by_sql("select users.* from users where email= '#{search}'")

	   else
	  #find(:all,:conditions=>["role_id=?",3])
	   includes(:gelaran,:faculty,:staff_type,:user=>:role).find(:all)
	   end
end
end
