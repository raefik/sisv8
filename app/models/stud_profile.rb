class StudProfile < ActiveRecord::Base
belongs_to :user
belongs_to :gender
belongs_to :state
belongs_to :staff
belongs_to :gred
has_many :log_books
has_many :date_visits

def self.search(search)
		if search
	  includes(:log_books,:staff=>:date_visits,:user=>[:role,:user_companies]).find(:all,:conditions=>['matric_no like?',"#{search}"])
	  #find_by_sql("select users.* from users where email= '#{search}'")
	  
	   else
	  #find(:all,:conditions=>["role_id=?",3])
	   includes(:user=>:role).find(:all)
	   end
end
end
