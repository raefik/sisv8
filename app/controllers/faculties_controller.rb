class FacultiesController < ApplicationController
  # GET /faculties
  # GET /faculties.json
  def course_report
    aColumns = ['id','name','']
  aColumnType = ['id', 'string','']
  
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
      # sOrder = ""
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
  
    
    totalrecord = Faculty.select(selectedColumn)
        .where(sWhere)
                
    rowno = params[:iDisplayStart].to_i
    
    fac = totalrecord
        .limit(params[:iDisplayLength])
        .offset(params[:iDisplayStart])
        .order(sOrder)
    
    facs = fac.each.map do |r| [
      rowno += 1,
      r.name,
      "<center><img src='/assets/icons/packs/fugue/16x16/pencil-ruler.png' id='edit#{r.id}' onClick='edit(#{r.id});'/></center>"
    ] end

    if sWhere == "true=true"
      totallen = Faculty.all.length
    else
      totallen = totalrecord.length
    end
    
    render :json => { 
      :sEcho => params[:sEcho], 
      :iTotalRecords => totallen, 
      :iTotalDisplayRecords => totallen,
      :aaData => facs 
    }
  end


  def index
    @faculties = Faculty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faculties }
    end
  end

  # GET /faculties/1
  # GET /faculties/1.json
  def show
    @faculty = Faculty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @faculty }
    end
  end

  # GET /faculties/new
  # GET /faculties/new.json
  def new
    @faculty = Faculty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @faculty }
    end
  end

  # GET /faculties/1/edit
  def edit
    @faculty = Faculty.find(params[:id])
  end

  # POST /faculties
  # POST /faculties.json
  def create
    @faculty = Faculty.new(params[:faculty])

    respond_to do |format|
      if @faculty.save
        format.html { redirect_to @faculty, notice: 'Faculty was successfully created.' }
        format.json { render json: @faculty, status: :created, location: @faculty }
      else
        format.html { render action: "new" }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /faculties/1
  # PUT /faculties/1.json
  def update
    @faculty = Faculty.find(params[:id])

    respond_to do |format|
      if @faculty.update_attributes(params[:faculty])
        format.html { redirect_to @faculty, notice: 'Faculty was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculties/1
  # DELETE /faculties/1.json
  def destroy
    @faculty = Faculty.find(params[:id])
    @faculty.destroy

    respond_to do |format|
      format.html { redirect_to faculties_url }
      format.json { head :ok }
    end
  end
end
