class SectionC6sController < ApplicationController
  # GET /section_c6s
  # GET /section_c6s.json
  def index
    @section_c6s = SectionC6.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c6s }
    end
  end

  # GET /section_c6s/1
  # GET /section_c6s/1.json
  def show
    @section_c6 = SectionC6.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c6 }
    end
  end

  # GET /section_c6s/new
  # GET /section_c6s/new.json
  def new
    @section_c6 = SectionC6.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c6 }
    end
  end

  # GET /section_c6s/1/edit
  def edit
    @section_c6 = SectionC6.find(params[:id])
  end

  # POST /section_c6s
  # POST /section_c6s.json
  def create
    @section_c6 = SectionC6.new(params[:section_c6])

    respond_to do |format|
      if @section_c6.save
        format.html { redirect_to @section_c6, notice: 'Section c6 was successfully created.' }
        format.json { render json: @section_c6, status: :created, location: @section_c6 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c6s/1
  # PUT /section_c6s/1.json
  def update
    @section_c6 = SectionC6.find(params[:id])

    respond_to do |format|
      if @section_c6.update_attributes(params[:section_c6])
        format.html { redirect_to @section_c6, notice: 'Section c6 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c6s/1
  # DELETE /section_c6s/1.json
  def destroy
    @section_c6 = SectionC6.find(params[:id])
    @section_c6.destroy

    respond_to do |format|
      format.html { redirect_to section_c6s_url }
      format.json { head :ok }
    end
  end
end
