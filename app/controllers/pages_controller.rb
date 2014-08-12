class PagesController < ApplicationController
  def home
  	
  	@title="home"  
  	@users=User.all
  	@company = Company.find(:all, :order => "created_at desc", :limit => 9)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @company }
    end
    
  end
  
  def faq
  	@title="FAQ"
  	
  end

  def about
  	@title="about"
  end

  def help
  	@title="help"
  end

  def contact
  	@title="contact"
  end

  def index
  	@title="index"
  end
  
  def profile
  	@title="profile"
  end
  
  def search_class
  	@data_class=StudEdu.search(params[:search])
  end
  
  
  def markah_student
  @title="view_marks"
  staff=Staff.find_by_user_id(current_user.id)
  @data_student=StudProfile.search(params[:search])
  @student_all= StudProfile.includes(:staff,:user=>[:role,{:user_companies=>:company},:companies,:students])
  @student_sv = StudProfile.includes(:staff,:user=>[:role,{:user_companies=>:company},:companies,:students]).where('staff_id=?',staff.id)
	unless params[:search].blank?  
	@log_books=LogBook.find(:all,:conditions=>["stud_profile_id=?",@data_student])
	@date=DateVisit.find(:all,:conditions=>["student_id =?","#{params[:search]}"])
	end
 
 
  end
  def search_student
  @title="students"
  staff=Staff.find_by_user_id(current_user.id)
  @data_student=StudProfile.search(params[:search])

  @student_all= StudProfile.includes(:staff,:user=>[:role,{:user_companies=>:company},:companies,:students]).all
  @student_sv = StudProfile.includes(:staff,:user=>[:role,{:user_companies=>:company},:companies,:students]).where('staff_id=?',staff.id)
	unless params[:search].blank?  
	@log_books=LogBook.find(:all,:conditions=>["stud_profile_id=?",@data_student])
	@date=DateVisit.find(:all,:conditions=>["student_id =?","#{params[:search]}"])
	end
 
  end
  
  def student_all
  @title="students"
  @data_student=StudProfile.search(params[:search])
  if (params[:act].nil? && params[:act] == "searching")
  	@act = "upd"
  		@stud = StudProfile.find_by_matric_no(params[:search])
	    @staffid = params[:stud_profile][:staff_id].to_i
	  	@stud.staff_id = @staffid
	  	@stud.save
  end
 
  @data_class=StudEdu.search(params[:search])
  @student_all = StudProfile.includes(:staff,:user=>[:role,{:user_companies=>:company},:companies,:students]).all
  @stud = UserCompany.includes(:company,:student,:user=>[:role,{:stud_profiles=>:staff},:staffs]).find(:all,:conditions=>["total =?",1])
  
  end
  
  def updatestudprofile
  
  	@stud = StudProfile.find_by_matric_no(params[:studid])
  	@staffid = params[:staffid]
  	if !@staffid.nil?
  		@stud.staff_id = @staffid.to_i
		@stud.save
	end
	if @stud.save
		redirect_to '/search_student'
	end
  end

   def staff
    if params[:del]
      staff = Staff.find(params[:del])
      user=User.find(staff.user_id)
      user.destroy
      staff.destroy
      redirect_to pensyarah_path
    else
      @title="staff"
      @a=Staff.find_by_user_id(current_user.id)
      @data=Staff.search(params[:search])
      @data_all=Staff.includes(:gelaran,:faculty,:staff_type,:user=>:role).find(:all)
    end
  end

  def student
   @title="student"
   current_student=Student.find_by_user_id(current_user.id)
   @users=User.where(:role_id=>2).all
   @students=UserCompany.where(:student_id=>current_student).all   
  end

  def company
   @title="company"
   current_company=Company.find_by_user_id(current_user.id)
   #@usercompanies=UserCompany.where(:company_id=>current_company.id).all
   @usercompanies=UserCompany.where(:company_id=>current_company.id).all
  end
  
  def reminder
  @title="student"
   @reminder=current_user
  end
  
  
  def internship
  @data_student=StudProfile.includes(:log_books,:staff=>:date_visits,:user=>[:role,:user_companies]).find_by_user_id(current_user.id)
  @data_class=StudEdu. includes(:user,:student_class,:faculty).find_by_user_id(current_user.id)
  #@date=DateVisit.includes(:staff,:stud_profiles=>:user).find(:all,:conditions=>["student_id =?",@data_student.matric_no])
  end

end
