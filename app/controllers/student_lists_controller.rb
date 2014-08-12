class StudentListsController < ApplicationController
  # GET /student_lists
  # GET /student_lists.json
  
  def studentfind
    sid=params[:sid];
    @student_lists =  StudentList
      .where(:studentid=>sid)
      .select("fullname,mykadno,studentid,groupcode,programcode,facultycode,
				campuscode,contactno,handphoneno,add1
				,add2,postcode,city,state_id,email,cgpa")
    respond_to do |format|
      format.json { render json: @student_lists }
    end
  end
  
  def studentfind2
    cid=params[:cid];
    @student_lists =  StudentList
      .where(:mykadno=>cid)
      .select("fullname,mykadno,studentid,groupcode,programcode,facultycode,
				campuscode,contactno,handphoneno,add1
				,add2,postcode,city,state_id,email,cgpa")
    respond_to do |format|
      format.json { render json: @student_lists }
    end
  end
  
  
  def studentlisting_data
	# array of database columns use by DataTables. use an empty string when you want to insert a non-database field
	aColumns = ['id', 'studentid', 'mykadno', 'fullname', 'gender_id','groupcode', 'programcode', 'facultycode', 'campuscode','contactno','handphoneno','religion_id','add1','add2','postcode','city','state_id','email','cgpa','','','']
	aColumnType = ['int', 'string', 'string', 'string', 'int','string', 'string', 'string', 'string', 'string', 'string','int', 'string', 'string', 'string', 'string','int', 'string', 'string','','','']

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


		totalrecord = StudentList.select(selectedColumn)
				.where(sWhere)

		rowno = params[:iDisplayStart].to_i

		usr = totalrecord.limit(params[:iDisplayLength])
				.offset(rowno)
				.order(sOrder)
				

		usrs = usr.each.map do |u| [
			u.studentid,
			u.mykadno,
			u.fullname,
			u.gender_id,
		    #u.department.nil? ? '' : u.department.name,
			u.programcode,
			u.facultycode,
			u.campuscode,
			u.contactno,
			u.handphoneno,
			u.religion_id,
			u.add1,
			u.add2,
			u.postcode,
			u.city,
			u.state_id,
			u.email,
			u.cgpa,
		] end

		if sWhere == "true=true"
			totallen = StudentList.all.length
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
  
  def index
    @student_lists = StudentList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_lists }
    end
  end

  # GET /student_lists/1
  # GET /student_lists/1.json
  def show
    @student_list = StudentList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_list }
    end
  end

  # GET /student_lists/new
  # GET /student_lists/new.json
  def new
    @student_list = StudentList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_list }
    end
  end

  # GET /student_lists/1/edit
  def edit
    @student_list = StudentList.find(params[:id])
  end

  # POST /student_lists
  # POST /student_lists.json
  def create
    @student_list = StudentList.new(params[:student_list])

    respond_to do |format|
      if @student_list.save
        format.html { redirect_to @student_list, notice: 'Student list was successfully created.' }
        format.json { render json: @student_list, status: :created, location: @student_list }
      else
        format.html { render action: "new" }
        format.json { render json: @student_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_lists/1
  # PUT /student_lists/1.json
  def update
    @student_list = StudentList.find(params[:id])

    respond_to do |format|
      if @student_list.update_attributes(params[:student_list])
        format.html { redirect_to @student_list, notice: 'Student list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_lists/1
  # DELETE /student_lists/1.json
  def destroy
    @student_list = StudentList.find(params[:id])
    @student_list.destroy

    respond_to do |format|
      format.html { redirect_to student_lists_url }
      format.json { head :ok }
    end
  end
end
