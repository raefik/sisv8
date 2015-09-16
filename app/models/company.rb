class Company < ActiveRecord::Base
belongs_to :user
has_many :user_companies
has_many :students, :through=>:user_companies
has_many :comp_cats
end
