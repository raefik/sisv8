class StaffTypesController < ApplicationController
  # GET /staff_types
  # GET /staff_types.json
  def index
    @staff_types = StaffType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staff_types }
    end
  end

  # GET /staff_types/1
  # GET /staff_types/1.json
  def show
    @staff_type = StaffType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staff_type }
    end
  end

  # GET /staff_types/new
  # GET /staff_types/new.json
  def new
    @staff_type = StaffType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staff_type }
    end
  end

  # GET /staff_types/1/edit
  def edit
    @staff_type = StaffType.find(params[:id])
  end

  # POST /staff_types
  # POST /staff_types.json
  def create
    @staff_type = StaffType.new(params[:staff_type])

    respond_to do |format|
      if @staff_type.save
        format.html { redirect_to @staff_type, notice: 'Staff type was successfully created.' }
        format.json { render json: @staff_type, status: :created, location: @staff_type }
      else
        format.html { render action: "new" }
        format.json { render json: @staff_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staff_types/1
  # PUT /staff_types/1.json
  def update
    @staff_type = StaffType.find(params[:id])

    respond_to do |format|
      if @staff_type.update_attributes(params[:staff_type])
        format.html { redirect_to @staff_type, notice: 'Staff type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @staff_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_types/1
  # DELETE /staff_types/1.json
  def destroy
    @staff_type = StaffType.find(params[:id])
    @staff_type.destroy

    respond_to do |format|
      format.html { redirect_to staff_types_url }
      format.json { head :ok }
    end
  end
end
