class CompAdv < ActiveRecord::Base
belongs_to :user
belongs_to :requirement
belongs_to :allowance
belongs_to :available_internship
belongs_to :status
end
