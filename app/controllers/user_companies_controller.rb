class UserCompaniesController < ApplicationController

  # GET /user_companies
  # GET /user_companies.json
  def index
    @user_companies = UserCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_companies }
    end
  end

  # GET /user_companies/1
  # GET /user_companies/1.json
  def show
    @user_company = UserCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_company }
    end
  end

  # GET /user_companies/new
  # GET /user_companies/new.json
  def new
    @user_company = UserCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_company }
    end
  end

  # GET /user_companies/1/edit
  def edit
    @user_company = UserCompany.find(params[:id])
  end

  # POST /user_companies
  # POST /user_companies.json
  def create
    #@user=current_user.students.find_by_user_id(current_user.id)
    company=Company.find(params[:company_id])
    student=Student.find_by_user_id(current_user.id)
	#check=UserCompany.find(:all,:conditions=>['student_id=? and company_id=?',current_student,company])
	check=student.user_companies.find_by_company_id(company.id)
	
	
	if check.nil? 
		if student.user_companies.sum(:quantity)==5
			flash[:error]="Pilihan Syarikat Terhad Kepada 5 Sahaja!!"
			redirect_to reminder_path
			return
		end
		@user_company = student.user_companies.build(:company_id=>company.id,:user_id=>current_user.id)	
		if @user_company.save
			flash[:success]="Successfully Addedd"
			redirect_to reminder_path
			return
		end
	end
	
	unless check.nil?
				if check.company_id==company.id && student.user_companies.sum(:quantity)==5
				flash[:error]="Nama Syarikat Sudah Wujud Dalam Senarai Dan Sudah 5 Pilihan!!"
				redirect_to reminder_path
				return
				else
				if check.company_id==company.id 
				flash[:error]="Nama Syarikat Sudah Wujud Dalam Senarai Anda Sila Pilih Yang Lain!!"
				redirect_to reminder_path
				return
				end
				end
				
	end
  end

  # PUT /user_companies/1
  # PUT /user_companies/1.json
  def update
    # @user_company = UserCompany.find(params[:id])
    # respond_to do |format|
      # if @user_company.update_attributes(params[:user_company])
        # format.html { redirect_to reminder_path, notice: 'User company was successfully updated.' }
        # format.json { head :ok }
      # else
        # format.html { render action: "edit" }
        # format.json { render json: @user_company.errors, status: :unprocessable_entity }
      # end
    # end
	 @user_company = UserCompany.find(params[:id])
	student=Student.find_by_user_id(current_user.id)
	
					if params[:user_company][:action_status_id]=="1"
					@user_company.update_attributes(:action_status_id=>1)
					flash[:error]="Applied"
					redirect_to reminder_path
					return
					end
					if params[:user_company][:action_status_id]=="2"
					@user_company.update_attributes(:action_status_id=>2)
					flash[:error]="Offered"
					redirect_to reminder_path
					return
					end
					if params[:user_company][:action_status_id]=="3"
						if student.user_companies.sum(:total)==1
						flash[:error]="Only one offer is allowed to accept"
						redirect_to reminder_path
						return
						else 
						@user_company.update_attributes(:action_status_id=>3,:total=>1)
						flash[:error]="Accepted"
						redirect_to reminder_path
						return
						end
					end
					if params[:user_company][:action_status_id]=="4"
					@user_company.update_attributes(:action_status_id=>4)
					flash[:error]="KIV"
					redirect_to reminder_path
					return
					end
					if params[:user_company][:action_status_id]=="5"
					@user_company.update_attributes(:action_status_id=>5)
					flash[:error]="Rejected"
					redirect_to reminder_path
					return
					end
  end

  # DELETE /user_companies/1
  # DELETE /user_companies/1.json
  def destroy
    @user_company = UserCompany.find(params[:id])
    @user_company.destroy

    respond_to do |format|
      format.html { redirect_to user_companies_url }
      format.json { head :ok }
    end
  end
  
  
end
