class SesisController < ApplicationController
  # GET /sesis
  # GET /sesis.json
  def index
    @sesis = Sesi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sesis }
    end
  end

  # GET /sesis/1
  # GET /sesis/1.json
  def show
    @sesi = Sesi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sesi }
    end
  end

  # GET /sesis/new
  # GET /sesis/new.json
  def new
    @sesi = Sesi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sesi }
    end
  end

  # GET /sesis/1/edit
  def edit
    @sesi = Sesi.find(params[:id])
  end

  # POST /sesis
  # POST /sesis.json
  def create
    @sesi = Sesi.new(params[:sesi])

    respond_to do |format|
      if @sesi.save
        format.html { redirect_to @sesi.user, notice: 'Sesi was successfully created.' }
        format.json { render json: @sesi, status: :created, location: @sesi }
      else
        format.html { render action: "new" }
        format.json { render json: @sesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sesis/1
  # PUT /sesis/1.json
  def update
    @sesi = Sesi.find(params[:id])

    respond_to do |format|
      if @sesi.update_attributes(params[:sesi])
        format.html { redirect_to @sesi.user, notice: 'Sesi was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sesis/1
  # DELETE /sesis/1.json
  def destroy
    @sesi = Sesi.find(params[:id])
    @sesi.destroy

    respond_to do |format|
      format.html { redirect_to sesis_url }
      format.json { head :ok }
    end
  end
  
  def erase
  	id = params[:id]
  	lb = Sesi.find(id)
	  	if lb.delete
		  	respond_to do |format|
		      format.html { redirect_to sesis_url }
		      format.json { head :ok }
		    end
		end    
  end
  
  def semester_data
	# array of database columns use by DataTables. use an empty string when you want to insert a non-database field
	aColumns = ['id','name','start_sesi','end_sesi','prog_name_id','user_id','']
	aColumnType = ['int','string','date','date','int','int','']

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


		totalrecord = Sesi.select(selectedColumn)
				.where(:user_id=>current_user.id)

		rowno = params[:iDisplayStart].to_i

		usr = totalrecord.limit(params[:iDisplayLength])
				.offset(rowno)
				.order(sOrder)
				

		usrs = usr.each.map do |u| [
			u.name,
			u.start_sesi == nil? ?  "" : u.start_sesi.strftime("%d/%m/%y"),
			u.end_sesi == nil? ?  "" : u.end_sesi.strftime("%d/%m/%y"),
			u.prog_name.name,
			"Updated",
        "<a href='/staffs/#{u.id}/edit' ><img src='/images/icon/color_18/pencil.png' width/></a>
        <a href='/sesis/erase/#{u.id}'><img src='/images/icon/color_18/cross.png' style='float:right;'/></a>",

		] end

		if sWhere == "true=true"
			totallen2 = Sesi.where(:user_id=>current_user.id).length
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
