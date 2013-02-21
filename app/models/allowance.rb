class Allowance < ActiveRecord::Base
has_many :comp_advs,:dependent=>:destroy
end
