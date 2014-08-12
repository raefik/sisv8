class UsersController < ApplicationController
  #for security
  before_filter :authenticate, :only=>[:index,:edit, :update]
  before_filter :correct_user, :only=>[:edit, :update]
  before_filter :admin_user, :only=>[:destroy]
 
  def complist
    @users = User.where(:role_id=>2)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  
  def studentlist
  	case current_user.role_id
		when 5
			@users = User.where(:role_id=>1)
    	when 4
    		@users = User.where(:role_id=>1,:faculty_id=>current_user.faculty_id)
    	end 
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
      format.csv { render text: @users.to_csv }
      format.xls #{ send_data @users.to_csv(col_sep: "\t") }
    end
  end
 
	def modnew
		@user=User.new
		@title="sign up"
	end
 
	def regstudent
		@user=User.new
	end
 
	def newstaff
		@user=User.new
	end
	
	def newcoordinator
		@user=User.new
	end
	
  def userfind
    sid=params[:sid];
    @users =  User.where(:name=>sid).select("name")
    respond_to do |format|
      format.json { render json: @users }
    end
  end
	
	def registernewstudent
		studid = params[:studid]
		mycid = params[:mycid]
		peraid = params[:peraid]
		email = params[:email]
    unless User.where(:email=>email, :name=>studid,:role_id=>peraid,:encrypted_password=>mycid).exists?
      at = User.new
      at.encrypted_password=mycid
      at.name=studid
      at.role_id=peraid
	  at.email=email
      at.save
      @studdata = StudentList.where(:studentid=>studid).select("studentid,email,mykadno")
    end

  respond_to do |format|
      format.json { render json: @studdata }
    end
  end	
	
  def intern
    ids=params[:ids];
    @stud_internships =  StudInternship
      .where(:user_id=>ids)
      .select("duration")
    respond_to do |format|
      format.json { render json: @stud_internships }
    end
  end

  def locate
    ids=params[:ids];
    @locations =  Location
      .where(:user_id=>ids)
      .select("state_id")
    respond_to do |format|
      format.json { render json: @locations }
    end
  end

  def ref
    ids=params[:ids];
    @stud_references =  StudReference
      .where(:user_id=>ids)
      .select("name,occupation,company,contact_no,email,relationship")
    respond_to do |format|
      format.json { render json: @stud_references }
    end
  end

  def studesc
    ids=params[:ids];
    @stud_descriptions =  StudDescription
      .where(:user_id=>ids)
      .select("about_me")
    respond_to do |format|
      format.json { render json: @stud_descriptions }
    end
  end

  def stuskill
    ids=params[:ids];
    @stud_skills =  StudSkill
      .where(:user_id=>ids)
      .select("skill,year_exp,skill_pro_id")
    respond_to do |format|
      format.json { render json: @stud_skills }
    end
  end

  def stulang
    ids=params[:ids];
    @stud_languages =  StudLanguage
      .where(:user_id=>ids)
      .select("language,spoken_id,written_id")
    respond_to do |format|
      format.json { render json: @stud_languages }
    end
  end

  def stuedu
    ids=params[:ids];
    @stud_languages =  StudLanguage
      .where(:user_id=>ids)
      .select("language,spoken_id,written_id")
    respond_to do |format|
      format.json { render json: @stud_languages }
    end
  end

  def stuback
    ids=params[:ids];
    @education_backgrounds =  EducationBackground
      .where(:user_id=>ids)
      .select("institute,year")
    respond_to do |format|
      format.json { render json: @education_backgrounds }
    end
  end

  def stupro
    ids=params[:ids];
    @stud_profiles =  StudProfile
      .where(:user_id=>ids)
      .select("matric_no,nric,gender_id")
    respond_to do |format|
      format.json { render json: @stud_profiles }
    end
  end

  def stuadd
    ids=params[:ids];
    @stud_adds =  StudAdd
      .where(:user_id=>ids)
      .select("city,postcode,place,state_id")
    respond_to do |format|
      format.json { render json: @stud_adds }
    end
  end

  def stucust
    ids=params[:ids];
    @stud_custodians =  StudCustodian
      .where(:user_id=>ids)
      .select("name,place,postcode,city,email,hp_no")
    respond_to do |format|
      format.json { render json: @stud_custodians }
    end
  end

  def index
  @title="index"
  user=current_user.id
  name=current_user.name
  @user=User.find_by_id(user)
		case @user.role_id
		when 1
		@student                 = current_user.students.find_by_user_id(@user.id)
		@stud_profile            = current_user.stud_profiles.find_by_user_id(@user.id)
		@stud_custodian          = current_user.stud_custodians.find_by_user_id(@user.id)
		@stud_skill              = current_user.stud_skills.find_by_user_id(@user.id)
		@stud_language           = current_user.stud_languages.find_by_user_id(@user.id)
		@stud_edu                = current_user.stud_edus.find_by_user_id(@user.id)
	    @stud_reference          = current_user.stud_references.find_by_user_id(@user.id)
		@stud_add                = current_user.stud_adds.find_by_user_id(@user.id)
		@stud_description        = current_user.stud_descriptions.find_by_user_id(@user.id)
		@stud_internship         = current_user.stud_internships.find_by_user_id(@user.id)
		@education_background    = current_user.education_backgrounds.find_by_user_id(@user.id)
		@location                = current_user.locations.find_by_user_id(@user.id)
		when 2
		@comp_profile  =   current_user.comp_profiles.find_by_user_id(@user.id)
		@company          =   current_user.companies.find_by_user_id(@user.id)
		@comp_adv      =   current_user.comp_advs.find_by_user_id(@user.id)
		when 3
		@staff_profile    =   current_user.staffs.find_by_user_id(@user.id)
		end
	@title="#{current_user.name}"
  end
  
  def newest
  @user=User.new
  @title="New Admin"
  end
  
  
  def new
  @user=User.new
  @title="sign up"
  end
  def show
		  @user=User.find(params[:id])
		case @user.role_id
		when 1
		@student                 = current_user.students.find_by_user_id(@user.id)
		@stud_profile            = current_user.stud_profiles.find_by_user_id(@user.id)
		@stud_custodian          = current_user.stud_custodians.find_by_user_id(@user.id)
		@stud_skill              = current_user.stud_skills.find_by_user_id(@user.id)
		@stud_language           = current_user.stud_languages.find_by_user_id(@user.id)
		@stud_edu                = current_user.stud_edus.find_by_user_id(@user.id)
	    @stud_reference          = current_user.stud_references.find_by_user_id(@user.id)
		@stud_add                = current_user.stud_adds.find_by_user_id(@user.id)
		#@stud_prefered_location = current_user.stud_pref_locations.find_by_user_id(@user.id)
		@stud_description        = current_user.stud_descriptions.find_by_user_id(@user.id)
		@stud_internship         = current_user.stud_internships.find_by_user_id(@user.id)
		@working_experience      = current_user.working_experiences.find_by_user_id(@user.id)
		@education_background    = current_user.education_backgrounds.find_by_user_id(@user.id)
		@location                = current_user.locations.find_by_user_id(@user.id)
		when 2
		@comp_profile  =   current_user.comp_profiles.find_by_user_id(@user.id)
		@company       =   current_user.companies.find_by_user_id(@user.id)
		@comp_adv      =   current_user.comp_advs.find_by_user_id(@user.id)
		when 3
		@staff_profile    =   current_user.staffs.find_by_user_id(@user.id)
		when 4
		@staff_profile    =   current_user.staffs.find_by_user_id(@user.id)
		end
		
		  @title = @user.name
  end
  
  def create
  @user=User.new(params[:user])
	sid=params[:sid];
	if @user.save
		case @user.role_id
		when 1
		@user.students.create!(:user_id=>"#{@user.id}",:name=>"#{@user.name}")
		@user.stud_profiles.create!(:user_id=>"#{@user.id}",:matric_no=>"#{@user.name}",:nric=>"#{@user.password}")
		@user.stud_custodians.create!(:user_id=>"#{@user.id}")
		@user.stud_descriptions.create!(:user_id=>"#{@user.id}")
		@user.stud_edus.create!(:user_id=>"#{@user.id}")
		@user.stud_adds.create!(:user_id=>"#{@user.id}")
		@user.stud_internships.create!(:user_id=>"#{@user.id}")
		when 2
		@user.comp_profiles.create!(:user_id=>"#{@user.id}")
		@user.companies.create!(:user_id=>"#{@user.id}",:name=>"#{@user.name}")
		@user.comp_advs.create!(:user_id=>"#{@user.id}")
		when 3
        if current_user.role_id == 4
		    @user.staffs.create!(:user_id=>"#{@user.id}",:staff_no=>"#{@user.name}",:name=>"#{@user.fullname}",:email=>"#{@user.email}",:validate_staff=>1,:staff_type_id=>1,:faculty_id=>"#{@user.faculty_id}")       
       else current_user.role_id == 3
        @user.staffs.create!(:user_id=>"#{@user.id}",:name=>"#{@user.fullname}",:staff_no=>"#{@user.name}",:email=>"#{@user.email}",:validate_staff=>1,:staff_type_id=>3,:faculty_id=>"#{@user.faculty_id}")
       end 
      
		end
	
		if @admin==false
			sign_in @user
			flash[:success]="Welcome to SIMS-UiTM,"+"   #{@user.name} "
			redirect_to signin_path
		else
			@buser=@user
			@user=@auser
			flash[:success]="   #{@buser.name} "+" Please Login " 
			
			redirect_to home_path
		end
	
	else
	@title="sign up"
	render 'new'
	end
	
  end
  
  def edit
  @user=User.find(params[:id])
  @titile="Edit user"
  end
  
  def update
  @user=User.find(params[:id])
	  if @user.update_attributes(params[:user])
	  flash[:success]="Profile Updated"
	  redirect_to @user
	  else
	  render 'edit'
	  @title="Edit user"
	  end
  end
  
  def destroy
  @user=User.find(params[:id])
  @user.destroy
  flash[:success]="User destroyed"
  redirect_to users_path
  end
  
  private
  def authenticate
  deny_access unless signed_in?
  end
  def correct_user
  @user=User.find(params[:id])
  redirect_to(root_path) unless current_user?(@user)
  end

  def admin_user
  redirect_to(root_path) unless current_user.admin?
  end
  
  
  

end
