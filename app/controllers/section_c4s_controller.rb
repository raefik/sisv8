class SectionC4sController < ApplicationController
  # GET /section_c4s
  # GET /section_c4s.json
  def index
    @section_c4s = SectionC4.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c4s }
    end
  end

  # GET /section_c4s/1
  # GET /section_c4s/1.json
  def show
    @section_c4 = SectionC4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c4 }
    end
  end

  # GET /section_c4s/new
  # GET /section_c4s/new.json
  def new
    @section_c4 = SectionC4.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c4 }
    end
  end

  # GET /section_c4s/1/edit
  def edit
    @section_c4 = SectionC4.find(params[:id])
  end

  # POST /section_c4s
  # POST /section_c4s.json
  def create
    @section_c4 = SectionC4.new(params[:section_c4])

    respond_to do |format|
      if @section_c4.save
        format.html { redirect_to @section_c4, notice: 'Section c4 was successfully created.' }
        format.json { render json: @section_c4, status: :created, location: @section_c4 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c4s/1
  # PUT /section_c4s/1.json
  def update
    @section_c4 = SectionC4.find(params[:id])

    respond_to do |format|
      if @section_c4.update_attributes(params[:section_c4])
        format.html { redirect_to @section_c4, notice: 'Section c4 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c4s/1
  # DELETE /section_c4s/1.json
  def destroy
    @section_c4 = SectionC4.find(params[:id])
    @section_c4.destroy

    respond_to do |format|
      format.html { redirect_to section_c4s_url }
      format.json { head :ok }
    end
  end
end
