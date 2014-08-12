class StaffsController < ApplicationController
  # GET /staffs
  # GET /staffs.json
  
  def kp_list
    
  end
  
  def index
    @staffs = Staff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffs }
    end
  end

  # GET /staffs/1
  # GET /staffs/1.json
  def show
    @staff = Staff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staff }
    end
  end

  # GET /staffs/new
  # GET /staffs/new.json
  def new
    @staff = Staff.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staff }
    end
  end

  # GET /staffs/1/edit
  def edit
    @staff = Staff.find(params[:id])
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @staff = Staff.new(params[:staff])

    respond_to do |format|
      if @staff.save
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        format.json { render json: @staff, status: :created, location: @staff }
      else
        format.html { render action: "new" }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staffs/1
  # PUT /staffs/1.json
  def update
    @staff = Staff.find(params[:id])
				if params[:staff][:staff_no]||
				   params[:staff][:staff_type_id]||
				   params[:staff][:gelaran_id]||
				   params[:staff][:faculty_id]||
				   params[:staff][:kampu_id]||
				   params[:staff][:room_no]||
				   params[:staff][:place]||
				   params[:staff][:office_no]||
				   params[:staff][:hp_no]||
				   params[:staff][:email]
			  
				  @staff.update_attributes(params[:staff])
				  flash[:notice]="Staff Updated"
				   redirect_to current_user
				else
				if params[:staff][:validate_staff]
				   @staff.update_attributes(params[:staff])
				   flash[:notice]="Staff Validated"
				   redirect_to pensyarah_path
				end
				return
				end
  end

  # DELETE /staffs/1
  # DELETE /staffs/1.json
  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy

    respond_to do |format|
      format.html { redirect_to staffs_url }
      format.json { head :ok }
    end
  end
  
  def coordinatorlisting_data
	# array of database columns use by DataTables. use an empty string when you want to insert a non-database field
	aColumns = ['id','faculty_id','staff_type_id','user_id','hp_no','staff_no','name','prog_name_id','room_no','email']
	aColumnType = ['int','int','int','int','string','string','string','int','string','string']

	# ordering
		sOrder = ""
		if params[:iSortCol_0].present?
			#sOrder = "ORDER BY  "
			inc = 0
			until inc > params[:iSortingCols].to_i-1
				sortInc = params[:"iSortCol_#{inc}"].to_i
				if params[:"bSortable_#{sortInc}"] == "true" && !aColumns[sortInc].empty?
					sOrder += aColumns[sortInc] + ( params[:"sSortDir_#{inc}"] == 'asc' ? " asc" : " desc") + ", "
				end
				inc+=1
			end

			sOrder = sOrder[0..-3]
			#if sOrder == "ORDER BY"
			#	sOrder = ""
			#end
		end

		# filtering
		sWhere = ""
		if !params[:sSearch].empty?
			inc = 0
			until inc > aColumns.count-1
				if !aColumns[inc].empty?
					if aColumnType[inc] == "int"
						sWhere += aColumns[inc] + " = " + params[:sSearch].to_i.to_s + " OR "
					else
						sWhere += aColumns[inc] + " ILIKE '%" + params[:sSearch] + "%' OR "
					end
				end
				inc+=1
			end

			sWhere = sWhere[0..-5]
			sWhere += " AND "
		end

		# individual column filtering
		inc = 0
		until inc > aColumns.count-1
			if params[:"bSearchable_#{inc}"].present? && params[:"bSearchable_#{inc}"] == "true" && !params[:"sSearch_#{inc}"].empty?
				if aColumnType[inc] == "int"
					sWhere += aColumns[inc] + " = " + params[:"sSearch_#{inc}"].to_i.to_s + " AND "
				else
					sWhere += aColumns[inc] + " ILIKE '%" + params[:"sSearch_#{inc}"] + "%'" + " AND "
				end
			end
			inc+=1
		end
		sWhere += "true=true"


		aColumns.reject! { |c| c.empty? }
		selectedColumn = aColumns.join(', ')


		totalrecord = Staff.select(selectedColumn)
				.where(:faculty_id=>19, :staff_type_id =>1 )

		rowno = params[:iDisplayStart].to_i

		usr = totalrecord.limit(params[:iDisplayLength])
				.offset(rowno)
				.order(sOrder)
				

		usrs = usr.each.map do |u| [

	    if Photo.find_by_user_id(u.user_id).nil? 
		 	"<td align='left'><div class='profile'><a href='/photos/new?user_id=#{u.user_id}>'><img  src='/assets/profilePlus.jpg' width='35px' /></a></div></td>"
		else
			"<td align='left'><div class='profile'><a href='/photos/#{Photo.find_by_user_id(u.user_id).id}/edit?user_id=#{u.user_id}'><img src='#{Photo.find_by_user_id(u.user_id).image}' width='30px'/></a></div></td>" 
		end,
	    "<td align='left'><b>#{u.name}</b><br/>#{u.staff_no}</br>#{u.staff_type.name}</td>",
    	u.prog_name.name,
	    "<td align='left'><b>Room &nbsp#{u.room_no}</b><br/>H/P &nbsp:&nbsp #{u.hp_no}</br>#{u.email}</td>",
        "<a href='/staffs/"+u.id.to_s+"/edit' ><img src='/images/icon/color_18/pencil.png' /></a>",
		] end

		if sWhere == "true=true"
			totallen2 = Staff.where(:faculty_id=>19 ,:staff_type_id =>1).length
		else
			totallen = totalrecord.length
		end

		render :json => {
			:sEcho => params[:sEcho],
			:iTotalRecords => totallen,
			:iTotalDisplayRecords => totallen2,
			:aaData => usrs
		}
  end
  
end
