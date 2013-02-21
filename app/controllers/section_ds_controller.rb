class SectionDsController < ApplicationController
  # GET /section_ds
  # GET /section_ds.json
  def index
    @section_ds = SectionD.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_ds }
    end
  end

  # GET /section_ds/1
  # GET /section_ds/1.json
  def show
    @section_d = SectionD.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_d }
    end
  end

  # GET /section_ds/new
  # GET /section_ds/new.json
  def new
    @section_d = SectionD.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_d }
    end
  end

  # GET /section_ds/1/edit
  def edit
    @section_d = SectionD.find(params[:id])
  end

  # POST /section_ds
  # POST /section_ds.json
  def create
    @section_d = SectionD.new(params[:section_d])

    respond_to do |format|
      if @section_d.save
        format.html { redirect_to @section_d, notice: 'Section d was successfully created.' }
        format.json { render json: @section_d, status: :created, location: @section_d }
      else
        format.html { render action: "new" }
        format.json { render json: @section_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_ds/1
  # PUT /section_ds/1.json
  def update
    @section_d = SectionD.find(params[:id])

    respond_to do |format|
      if @section_d.update_attributes(params[:section_d])
        format.html { redirect_to @section_d, notice: 'Section d was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_ds/1
  # DELETE /section_ds/1.json
  def destroy
    @section_d = SectionD.find(params[:id])
    @section_d.destroy

    respond_to do |format|
      format.html { redirect_to section_ds_url }
      format.json { head :ok }
    end
  end
end
