class LecturerListsController < ApplicationController
  # GET /lecturer_lists
  # GET /lecturer_lists.json
  
  def stafffind
    sid=params[:sid];
    @lecturer_lists =  LecturerList
      .where(:staffno=>sid)
      .select("fullname,
	  mykadno,
	  staffno,
	  groupname,
	  faculty,
	  subjectname,
	  subjectcode,
	  campuscode,
	  contactno,
	  handphoneno,
	  email")
    respond_to do |format|
      format.json { render json: @lecturer_lists }
    end
  end
  
  
  def index
    @lecturer_lists = LecturerList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lecturer_lists }
    end
  end

  # GET /lecturer_lists/1
  # GET /lecturer_lists/1.json
  def show
    @lecturer_list = LecturerList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lecturer_list }
    end
  end

  # GET /lecturer_lists/new
  # GET /lecturer_lists/new.json
  def new
    @lecturer_list = LecturerList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lecturer_list }
    end
  end

  # GET /lecturer_lists/1/edit
  def edit
    @lecturer_list = LecturerList.find(params[:id])
  end

  # POST /lecturer_lists
  # POST /lecturer_lists.json
  def create
    @lecturer_list = LecturerList.new(params[:lecturer_list])

    respond_to do |format|
      if @lecturer_list.save
        format.html { redirect_to @lecturer_list, notice: 'Lecturer list was successfully created.' }
        format.json { render json: @lecturer_list, status: :created, location: @lecturer_list }
      else
        format.html { render action: "new" }
        format.json { render json: @lecturer_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lecturer_lists/1
  # PUT /lecturer_lists/1.json
  def update
    @lecturer_list = LecturerList.find(params[:id])

    respond_to do |format|
      if @lecturer_list.update_attributes(params[:lecturer_list])
        format.html { redirect_to @lecturer_list, notice: 'Lecturer list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lecturer_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def lecturerlisting_data
	# array of database columns use by DataTables. use an empty string when you want to insert a non-database field
	aColumns = ['id', 'staffno','fullname','handphoneno', 'mykadno', 'email']
	aColumnType = ['int', 'string','string', 'string', 'string', 'string', 'string']

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


		totalrecord = LecturerList.select(selectedColumn)
				.where(sWhere)

		rowno = params[:iDisplayStart].to_i

		usr = totalrecord.limit(params[:iDisplayLength])
				.offset(rowno)
				.order(sOrder)
				

		usrs = usr.each.map do |u| [
			u.staffno,
			u.fullname,
			(u.handphoneno.nil?) ? ''  : u.handphoneno,
			u.mykadno,
			u.email,
		    
		] end

		if sWhere == "true=true"
			totallen = LecturerList.all.length
		else
			totallen = totalrecord.length
		end

		render :json => {
			:sEcho => params[:sEcho],
			:iTotalRecords => totallen,
			:iTotalDisplayRecords => totallen,
			:aaData => usrs
		}
  end

  # DELETE /lecturer_lists/1
  # DELETE /lecturer_lists/1.json
  def destroy
    @lecturer_list = LecturerList.find(params[:id])
    @lecturer_list.destroy

    respond_to do |format|
      format.html { redirect_to lecturer_lists_url }
      format.json { head :ok }
    end
  end
end
