class SectionC8sController < ApplicationController
  # GET /section_c8s
  # GET /section_c8s.json
  def index
    @section_c8s = SectionC8.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c8s }
    end
  end

  # GET /section_c8s/1
  # GET /section_c8s/1.json
  def show
    @section_c8 = SectionC8.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c8 }
    end
  end

  # GET /section_c8s/new
  # GET /section_c8s/new.json
  def new
    @section_c8 = SectionC8.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c8 }
    end
  end

  # GET /section_c8s/1/edit
  def edit
    @section_c8 = SectionC8.find(params[:id])
  end

  # POST /section_c8s
  # POST /section_c8s.json
  def create
    @section_c8 = SectionC8.new(params[:section_c8])

    respond_to do |format|
      if @section_c8.save
        format.html { redirect_to @section_c8, notice: 'Section c8 was successfully created.' }
        format.json { render json: @section_c8, status: :created, location: @section_c8 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c8s/1
  # PUT /section_c8s/1.json
  def update
    @section_c8 = SectionC8.find(params[:id])

    respond_to do |format|
      if @section_c8.update_attributes(params[:section_c8])
        format.html { redirect_to @section_c8, notice: 'Section c8 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c8s/1
  # DELETE /section_c8s/1.json
  def destroy
    @section_c8 = SectionC8.find(params[:id])
    @section_c8.destroy

    respond_to do |format|
      format.html { redirect_to section_c8s_url }
      format.json { head :ok }
    end
  end
end
