class ProgCode < ActiveRecord::Base
has_many :stud_edus ,:dependent=>:destroy
has_many :student_classes
has_many :staffs
end
