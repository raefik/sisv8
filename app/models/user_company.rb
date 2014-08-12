class UserCompany < ActiveRecord::Base
belongs_to :student
belongs_to :company
belongs_to :user
belongs_to :action_status
end
