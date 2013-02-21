class SectionC5sController < ApplicationController
  # GET /section_c5s
  # GET /section_c5s.json
  def index
    @section_c5s = SectionC5.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c5s }
    end
  end

  # GET /section_c5s/1
  # GET /section_c5s/1.json
  def show
    @section_c5 = SectionC5.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c5 }
    end
  end

  # GET /section_c5s/new
  # GET /section_c5s/new.json
  def new
    @section_c5 = SectionC5.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c5 }
    end
  end

  # GET /section_c5s/1/edit
  def edit
    @section_c5 = SectionC5.find(params[:id])
  end

  # POST /section_c5s
  # POST /section_c5s.json
  def create
    @section_c5 = SectionC5.new(params[:section_c5])

    respond_to do |format|
      if @section_c5.save
        format.html { redirect_to @section_c5, notice: 'Section c5 was successfully created.' }
        format.json { render json: @section_c5, status: :created, location: @section_c5 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c5s/1
  # PUT /section_c5s/1.json
  def update
    @section_c5 = SectionC5.find(params[:id])

    respond_to do |format|
      if @section_c5.update_attributes(params[:section_c5])
        format.html { redirect_to @section_c5, notice: 'Section c5 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c5s/1
  # DELETE /section_c5s/1.json
  def destroy
    @section_c5 = SectionC5.find(params[:id])
    @section_c5.destroy

    respond_to do |format|
      format.html { redirect_to section_c5s_url }
      format.json { head :ok }
    end
  end
end
