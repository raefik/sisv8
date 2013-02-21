class DateVisit < ActiveRecord::Base
belongs_to :user
belongs_to :staff
belongs_to :stud_profile
end
