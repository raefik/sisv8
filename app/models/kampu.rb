class Kampu < ActiveRecord::Base
attr_accessible :name,:state_id
has_many :stud_edus
has_many :staffs
end
