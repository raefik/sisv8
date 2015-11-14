class UserCompaniesController < ApplicationController

  # GET /user_companies
  # GET /user_companies.json
  
  def get_student_interns
  	aColumnType = ['','', 'integer', 'integer', '', '','']
    aColumns = ['','', 'user_company.id', 'user_company.id', '', '','']

    sIndexColumn = 'user_company.id'

    sOrder = ""
    if params[:iSortCol_0].present?
      inc = 0
      until inc > params[:iSortingCols].to_i-1
        sortInc = params[:"iSortCol_#{inc}"].to_i
        if params[:"bSortable_#{sortInc}"] == "true" && !aColumns[sortInc].empty?
          sOrder += aColumns[sortInc] + ( params[:"sSortDir_#{inc}"] == 'asc' ? " asc" : " desc") + ", "
        end
        inc+=1
      end

      sOrder = sOrder[0..-3]
    end

    sWhere = ""

    if !params[:sSearch].empty?
      inc = 0
      until inc > aColumns.count-1
        if !aColumns[inc].empty?
          if aColumnType[inc] == "int"
            sWhere += aColumns[inc]+"::text ILIKE '%" + params[:sSearch]+"%'"
          elsif aColumnType[inc] == "datetime"
            sWhere += "to_char("+ aColumns[inc] + "::date, 'dd-mm-yyyy') ILIKE '%" + params[:sSearch] + "%'"
          else678590w3-
            sWhere += aColumns[inc] + " ILIKE '%" + params[:sSearch] + "%'"
          end

          if !aColumns[inc+1].empty?
            sWhere += " OR "
          end
        end

        inc+=1
      end
    end

    bColumns.reject! { |c| c.empty? }
    selectedColumn = bColumns.join(', ')

    totalrecord = UserCompany.select("id,student_id,company_id,user_id,action_status_id,total").where(:company_id => params[:id])
    rowno = params[:iDisplayStart].to_i

    record = totalrecord
    .where(sWhere)
    .limit(params[:iDisplayLength])
    .offset(params[:iDisplayStart])
    .order(sOrder)

    records = record.each.map do |tl|

      [
          rowno += 1,
          tl.testname,
          "<a onclick='editLab("+tl.resultid+"); return false'><img class='cross' title='Edit' src='/assets/icons/25x25/blue/pencil.png' width='20'/></a>
          <a onclick='deleteLab("+tl.resultid+"); return false'><img class='cross' title='Delete' src='/assets/icons/25x25/dark/cross.png' width='20'/></a>"
      ]
    end

    if sWhere == ""
      totallen = totalrecord.length
    else
      record = totalrecord
      .where(sWhere)
      .offset(params[:iDisplayStart])
      .order(sOrder)
      totallen = record.length
    end
    #l = lssss
    render :json => {
        :sEcho => params[:sEcho],
        :iTotalRecords => totallen,
        :iTotalDisplayRecords => totallen,
        :aaData => records
    }
  end
  
  def checkin
	@user_company = UserCompany.find(params[:id])
  end
  
  def stud_checkin
	current_student=Student.find_by_user_id(current_user.id)
   @users=User.where(:role_id=>2).all
   #raise current_student.id.to_s
   @students=UserCompany.where(:student_id=>current_student).all  
  end
  
  
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
					@user_company.update_attributes(:action_status_id=>1,:total=>"")
					flash[:error]="Applied"
					redirect_to reminder_path
					return
					end
					if params[:user_company][:action_status_id]=="2"
					@user_company.update_attributes(:action_status_id=>2,:total=>"")
					flash[:error]="Offered"
					redirect_to reminder_path
					return
					end
					if params[:user_company][:action_status_id]=="3"
						
						@user_company.update_attributes(:action_status_id=>3,:total=>1)
						flash[:error]="Accepted"
						redirect_to reminder_path
					end
					if params[:user_company][:action_status_id]=="4"
					@user_company.update_attributes(:action_status_id=>4,:total=>"")
					flash[:error]="KIV"
					redirect_to reminder_path
					return
					end
					if params[:user_company][:action_status_id]=="5"
					@user_company.update_attributes(:action_status_id=>5,:total=>"")
					flash[:error]="Rejected"
					redirect_to reminder_path
					return
					end
					if params[:user_company][:action_status_id]=="6"
					@user_company.update_attributes(:action_status_id=>6,:total=>"2")
					flash[:error]="Check in"
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
