class StudCustodian < ActiveRecord::Base
belongs_to :user
belongs_to :state

#ADD MISSING ENTITIY

belongs_to :student
end
