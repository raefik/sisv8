class User < ActiveRecord::Base
attr_accessor :password #virtual password
attr_accessible :name, :email, :password, :password_confirmation, :role_id,:fullname,:status,:image
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
#-------validates-attr----------
validates :name, :presence=>true,
				 :length=>{:maximum=>50}
					
validates :email, :presence=>true,
				  :format=>{:with => email_regex},
				  :uniqueness=>{:case_sensitive => false}
validates :role ,:presence=>true
#----------relationship-for-student--------
  has_many :students, :dependent=>:destroy
  has_many :stud_profiles, :dependent=>:destroy
  has_many :stud_custodians, :dependent=>:destroy
  has_many :stud_skills, :dependent=>:destroy
  has_many :stud_languages, :dependent=>:destroy
  has_many :stud_edus,:dependent=>:destroy
  has_many :stud_references, :dependent=>:destroy
  has_many :stud_adds, :dependent=>:destroy
  has_many :stud_internships, :dependent=>:destroy
  has_many :locations, :dependent=>:destroy
  has_many :stud_descriptions, :dependent=>:destroy
  has_many :working_experiences, :dependent=>:destroy
  has_many :education_backgrounds, :dependent=>:destroy
  has_many :user_companies
  has_many :log_books
  has_many :sesis
  has_many :photos

  #......missing relation......
  has_many :date_visits


  #--------------------------------------------
  #-------relationship_for_company----
  has_many :companies , :dependent=>:destroy
  has_many :comp_profiles , :dependent=>:destroy
  has_many :comp_advs, :dependent=>:destroy
  has_many :benefits, :dependent=>:destroy
  has_many :requirements, :dependent=>:destroy
  has_many :available_internships, :dependent=>:destroy
  #-----------------------------------
  #--------relationship_staffs-------
  has_many :staffs
  #---------------------------------
  belongs_to :role
#-------------------------------
#automatically create the virtual attribute 'password_confirmation'
validates :password, :presence=>true,
					 :confirmation=>true,
					 :length=>{:within=>6..40}
					 
#callback function
before_save :encrypt_password

#return true if the user's password matches the submitted password
def has_password?(submitted_password)
#compare encrypted_password with the encrypted version of 
#submitted_password
encrypted_password==encrypt(submitted_password)
end

def self.authenticate(name,submitted_password)
user=find_by_name(name)
	return nil if user.nil?
	return user if user.has_password?(submitted_password)
end
def self.authenticate_with_salt(id,cookie_salt)
user=find_by_id(id)
(user&&user.salt==cookie_salt)? user:nil
end
def self.search(search)
if search
  find(:all,:conditions=>['email like? and role_id like?',"#{search}","3"])
  #find_by_sql("select users.* from users where email= '#{search}'")
  
   else
  #find(:all,:conditions=>["role_id=?",3])
  find(:all)
   end
end
private

	def encrypt_password
		self.salt=make_salt if new_record?
		self.encrypted_password=encrypt(password)
	end
	
	def encrypt(string)
		secure_hash("#{salt}--#{string}")
	end
	
	def make_salt
		secure_hash("#{Time.now.utc}--#{password}")
	end
	
	def secure_hash(string)
		Digest::SHA2.hexdigest(string)
	end
	
	def self.to_csv
	    CSV.generate do |csv|
	      csv << column_names
	      all.each do |user|
	        csv << user.attributes.values_at(*column_names)
	      end
	    end
	end		 
end
