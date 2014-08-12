class State < ActiveRecord::Base
	
  has_many :locations,:dependent=>:destroy
  has_many :stud_adds ,:dependent=>:destroy
  has_many :stud_custodians ,:dependent=>:destroy
  has_many :comp_profiles ,:dependent=>:destroy
  belongs_to :student_list
end
