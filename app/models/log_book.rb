class LogBook < ActiveRecord::Base
belongs_to :user
belongs_to :stud_profile
end