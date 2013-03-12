class ConfirmationLettersController < ApplicationController
     def show
		@offer                   = User.find(params[:id])
        @student                 = Student.find_by_user_id(@offer.id)
		@stud_profile            = StudProfile.find_by_user_id(@offer.id)
		@stud_custodian          = StudCustodian.find_by_user_id(@offer.id)
		@stud_skill              = StudSkill.find_by_user_id(@offer.id)
		@stud_language           = StudLanguage.find_by_user_id(@offer.id)
		@stud_edu                = StudEdu.find_by_user_id(@offer.id)
	    @stud_reference          = StudReference.find_by_user_id(@offer.id)
		@stud_add                = StudAdd.find_by_user_id(@offer.id)
		#@stud_prefered_location  = StudPrefLocation.find_by_user_id(@offer.id)
		@stud_internship         = StudInternship.find_by_user_id(@offer.id)
		@user_company		     = @student.user_companies.where("action_status_id=?",3).find_by_student_id(@student.id)
		@comp       			 =Company.find_by_id(@user_company.company.id)
		@comp_profile			 =CompProfile.find_by_user_id(@comp.user_id)
  end

  def edit
  end

end
