class StaffsController < ApplicationController
  # GET /staffs
  # GET /staffs.json
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
				   redirect_to @staff.user
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
end
