class IklanController < ApplicationController
  def show
  @iklan = User.find(params[:id])
  @comp_profile  =  CompProfile.find_by_user_id(@iklan.id)
  @company       =  Company.find_by_user_id(@iklan.id)
  @comp_adv      =   CompAdv.find_by_user_id(@iklan.id)
  @companies=Company.where(:user_id=>"#{@iklan.id}").all
  @user_company=UserCompany.new
  @users=User.all
  end

  def edit
  end

end
