class Faculty < ActiveRecord::Base
attr_accessible :name,:code
has_many :stud_edus 
has_many :prog_names 
has_many :staffs , :class_name => "Staff", :foreign_key => :faculty_id
end
