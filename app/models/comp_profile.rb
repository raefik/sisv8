class CompProfile < ActiveRecord::Base
belongs_to :user
belongs_to :sector
belongs_to :state
belongs_to :industry
belongs_to :cluster
belongs_to :comp_cat
end
