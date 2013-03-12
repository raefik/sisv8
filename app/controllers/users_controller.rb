class UsersController < ApplicationController
  #for security
  before_filter :authenticate, :only=>[:index,:edit, :update]
  before_filter :correct_user, :only=>[:edit, :update]
  before_filter :admin_user, :only=>[:destroy]
 
  
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
		end
		
		  @title = @user.name
  end
  
  def create
  @user=User.new(params[:user])

	if @user.save
		case @user.role_id
		when 1
		@user.students.create!(:user_id=>"#{@user.id}",:name=>"#{@user.name}")
		@user.stud_profiles.create!(:user_id=>"#{@user.id}")
		@user.stud_custodians.create!(:user_id=>"#{@user.id}")
		#@user.stud_skills.create!(:user_id=>"#{@user.id}")
		#@user.stud_languages.create!(:user_id=>"#{@user.id}")
		@user.stud_descriptions.create!(:user_id=>"#{@user.id}")
		@user.stud_edus.create!(:user_id=>"#{@user.id}")
		#@user.stud_references.create!(:user_id=>"#{@user.id}")
		@user.stud_adds.create!(:user_id=>"#{@user.id}")
		#@user.stud_pref_locations.create!(:user_id=>"#{@user.id}")
		@user.stud_internships.create!(:user_id=>"#{@user.id}")
		when 2
		@user.comp_profiles.create!(:user_id=>"#{@user.id}")
		@user.companies.create!(:user_id=>"#{@user.id}",:name=>"#{@user.name}")
		@user.comp_advs.create!(:user_id=>"#{@user.id}")
		when 3
		@user.staffs.create!(:user_id=>"#{@user.id}",:name=>"#{@user.name}")
		end
	
		if @admin==false
			sign_in @user
			flash[:success]="Welcome to SIMS-UiTM,"+"   #{@user.name} "
			redirect_to signin_path
		else
			@buser=@user
			@user=@auser
			flash[:success]="   #{@buser.name} "+" Succesfully Registered,]"
			redirect_to signin_path
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
