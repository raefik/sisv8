class ResumeController < ApplicationController
  def show
        @resume                  = User.find(params[:id])
        @student                 = Student.find_by_user_id(@resume.id)
		@stud_profile            = StudProfile.find_by_user_id(@resume.id)
		@stud_custodian          = StudCustodian.find_by_user_id(@resume.id)
		@stud_skill              = StudSkill.find_by_user_id(@resume.id)
		@stud_language           = StudLanguage.find_by_user_id(@resume.id)
		@stud_edu                = StudEdu.find_by_user_id(@resume.id)
	    @stud_reference          = StudReference.find_by_user_id(@resume.id)
		@stud_add                = StudAdd.find_by_user_id(@resume.id)
		#@stud_prefered_location  = StudPrefLocation.find_by_user_id(@resume.id)
		@stud_internship         = StudInternship.find_by_user_id(@resume.id)
		
  end

  def index
  end
  def edit
        @resume                  = User.find(params[:id]) #untuk cari student
        @student                 = Student.find_by_user_id(@resume.id)
		@stud_profile            = StudProfile.find_by_user_id(@resume.id)
		@stud_custodian          = StudCustodian.find_by_user_id(@resume.id)
		@stud_skill              = StudSkill.find_by_user_id(@resume.id)
		@stud_language           = StudLanguage.find_by_user_id(@resume.id)
		@stud_edu                = StudEdu.find_by_user_id(@resume.id)
	    @stud_reference          = StudReference.find_by_user_id(@resume.id)
		@stud_add                = StudAdd.find_by_user_id(@resume.id)
		@location			     = Location.find_by_user_id(@resume.id)
		@stud_internship         = StudInternship.find_by_user_id(@resume.id)
		@stud_description        =StudDescription.find_by_user_id(@resume.id)
		#@user_company		     = @student.user_companies.find_by_student_id(@student.id)
		company					 = Company.find_by_user_id(current_user.id)
		@resume_company		     = company.user_companies.find_by_student_id(@student.id)
		
		
  end
  def update
  end
 
end
