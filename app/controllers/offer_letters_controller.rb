class OfferLettersController < ApplicationController
  def show
        @offer                   = Company.find(params[:id])
        @student                 = Student.find_by_user_id(current_user.id)
		@stud_profile            = StudProfile.find_by_user_id(current_user.id)
		@stud_custodian          = StudCustodian.find_by_user_id(current_user.id)
		@stud_skill              = StudSkill.find_by_user_id(current_user.id)
		@stud_language           = StudLanguage.find_by_user_id(current_user.id)
		@stud_edu                = StudEdu.find_by_user_id(current_user.id)
	    @stud_reference          = StudReference.find_by_user_id(current_user.id)
		@stud_add                = StudAdd.find_by_user_id(current_user.id)
		#@stud_prefered_location  = StudPrefLocation.find_by_user_id(@offer.id)
		@stud_internship         = StudInternship.find_by_user_id(current_user.id)
		@user_company		     = @student.user_companies.find_by_company_id(@offer.id)
		#@comp			         = Company.find_by_id(@user_company.company_id)
		@comp_profile			 =CompProfile.includes(:user=>:companies).where("user_id=?",@offer.user.id)
  end

  def edit
        @offer                   = Company.find(params[:id])
		@comp_profile			 = CompProfile.find_by_user_id(@offer.user_id)
        @student                 = Student.find_by_user_id(current_user.id)
		@stud_profile            = StudProfile.find_by_user_id(current_user.id)
		@stud_custodian          = StudCustodian.find_by_user_id(current_user.id)
		@stud_skill              = StudSkill.find_by_user_id(current_user.id)
		@stud_language           = StudLanguage.find_by_user_id(current_user.id)
		@stud_edu                = StudEdu.find_by_user_id(current_user.id)
	    @stud_reference          = StudReference.find_by_user_id(current_user.id)
		@stud_add                = StudAdd.find_by_user_id(current_user.id)
		#@stud_prefered_location  = StudPrefLocation.find_by_user_id(current_user.id)
		@stud_internship         = StudInternship.find_by_user_id(current_user.id)
		#company					  =Company.find_by_user_id(offer.id)
		@user_company		     = @student.user_companies.find_by_company_id(@offer.id)
		#curren_user=student...comp?
  end

end
