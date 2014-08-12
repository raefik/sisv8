class ProgName < ActiveRecord::Base
attr_accessible :name,:code,:faculty_id

has_many :stud_edus ,:dependent=>:destroy
has_many :available_internships ,:dependent=>:destroy

has_many :student_classes
has_many :sesis
belongs_to :faculty
has_many :staffs , :class_name => "Staff", :foreign_key => :prog_name_id
end
