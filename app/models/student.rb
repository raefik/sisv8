class Student < ActiveRecord::Base
belongs_to :user
has_many :user_companies
has_many :companies,:through=>:user_company
has_many :stud_costodians
end
