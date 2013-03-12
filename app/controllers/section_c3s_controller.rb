class SectionC3sController < ApplicationController
  # GET /section_c3s
  # GET /section_c3s.json
  def index
    @section_c3s = SectionC3.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c3s }
    end
  end

  # GET /section_c3s/1
  # GET /section_c3s/1.json
  def show
    @section_c3 = SectionC3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c3 }
    end
  end

  # GET /section_c3s/new
  # GET /section_c3s/new.json
  def new
    @section_c3 = SectionC3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c3 }
    end
  end

  # GET /section_c3s/1/edit
  def edit
    @section_c3 = SectionC3.find(params[:id])
  end

  # POST /section_c3s
  # POST /section_c3s.json
  def create
    @section_c3 = SectionC3.new(params[:section_c3])

    respond_to do |format|
      if @section_c3.save
        format.html { redirect_to @section_c3, notice: 'Section c3 was successfully created.' }
        format.json { render json: @section_c3, status: :created, location: @section_c3 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c3s/1
  # PUT /section_c3s/1.json
  def update
    @section_c3 = SectionC3.find(params[:id])

    respond_to do |format|
      if @section_c3.update_attributes(params[:section_c3])
        format.html { redirect_to @section_c3, notice: 'Section c3 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c3s/1
  # DELETE /section_c3s/1.json
  def destroy
    @section_c3 = SectionC3.find(params[:id])
    @section_c3.destroy

    respond_to do |format|
      format.html { redirect_to section_c3s_url }
      format.json { head :ok }
    end
  end
end
