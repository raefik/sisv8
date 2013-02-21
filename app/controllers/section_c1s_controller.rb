class SectionC1sController < ApplicationController
  # GET /section_c1s
  # GET /section_c1s.json
  def index
    @section_c1s = SectionC1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c1s }
    end
  end

  # GET /section_c1s/1
  # GET /section_c1s/1.json
  def show
    @section_c1 = SectionC1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c1 }
    end
  end

  # GET /section_c1s/new
  # GET /section_c1s/new.json
  def new
    @section_c1 = SectionC1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c1 }
    end
  end

  # GET /section_c1s/1/edit
  def edit
    @section_c1 = SectionC1.find(params[:id])
  end

  # POST /section_c1s
  # POST /section_c1s.json
  def create
    @section_c1 = SectionC1.new(params[:section_c1])

    respond_to do |format|
      if @section_c1.save
        format.html { redirect_to @section_c1, notice: 'Section c1 was successfully created.' }
        format.json { render json: @section_c1, status: :created, location: @section_c1 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c1s/1
  # PUT /section_c1s/1.json
  def update
    @section_c1 = SectionC1.find(params[:id])

    respond_to do |format|
      if @section_c1.update_attributes(params[:section_c1])
        format.html { redirect_to @section_c1, notice: 'Section c1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c1s/1
  # DELETE /section_c1s/1.json
  def destroy
    @section_c1 = SectionC1.find(params[:id])
    @section_c1.destroy

    respond_to do |format|
      format.html { redirect_to section_c1s_url }
      format.json { head :ok }
    end
  end
end
