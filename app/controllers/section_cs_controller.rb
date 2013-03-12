class SectionCsController < ApplicationController
  # GET /section_cs
  # GET /section_cs.json
  def index
    @section_cs = SectionC.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_cs }
    end
  end

  # GET /section_cs/1
  # GET /section_cs/1.json
  def show
    @section_c = SectionC.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c }
    end
  end

  # GET /section_cs/new
  # GET /section_cs/new.json
  def new
    @section_c = SectionC.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c }
    end
  end

  # GET /section_cs/1/edit
  def edit
    @section_c = SectionC.find(params[:id])
  end

  # POST /section_cs
  # POST /section_cs.json
  def create
    @section_c = SectionC.new(params[:section_c])

    respond_to do |format|
      if @section_c.save
        format.html { redirect_to @section_c, notice: 'Section c was successfully created.' }
        format.json { render json: @section_c, status: :created, location: @section_c }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_cs/1
  # PUT /section_cs/1.json
  def update
    @section_c = SectionC.find(params[:id])

    respond_to do |format|
      if @section_c.update_attributes(params[:section_c])
        format.html { redirect_to @section_c, notice: 'Section c was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_cs/1
  # DELETE /section_cs/1.json
  def destroy
    @section_c = SectionC.find(params[:id])
    @section_c.destroy

    respond_to do |format|
      format.html { redirect_to section_cs_url }
      format.json { head :ok }
    end
  end
end
