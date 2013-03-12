class Faculty < ActiveRecord::Base
has_many :stud_edus 
has_many :staffs
end
