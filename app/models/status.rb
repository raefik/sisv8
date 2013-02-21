class Status < ActiveRecord::Base
#has_many :user_companies
has_many :comp_advs,:dependent=>:destroy
end
