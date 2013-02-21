class ProgName < ActiveRecord::Base
has_many :stud_edus ,:dependent=>:destroy
has_many :available_internships ,:dependent=>:destroy
has_many :student_classes
has_many :staffs
end
