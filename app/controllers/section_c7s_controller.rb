class SectionC7sController < ApplicationController
  # GET /section_c7s
  # GET /section_c7s.json
  def index
    @section_c7s = SectionC7.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c7s }
    end
  end

  # GET /section_c7s/1
  # GET /section_c7s/1.json
  def show
    @section_c7 = SectionC7.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c7 }
    end
  end

  # GET /section_c7s/new
  # GET /section_c7s/new.json
  def new
    @section_c7 = SectionC7.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c7 }
    end
  end

  # GET /section_c7s/1/edit
  def edit
    @section_c7 = SectionC7.find(params[:id])
  end

  # POST /section_c7s
  # POST /section_c7s.json
  def create
    @section_c7 = SectionC7.new(params[:section_c7])

    respond_to do |format|
      if @section_c7.save
        format.html { redirect_to @section_c7, notice: 'Section c7 was successfully created.' }
        format.json { render json: @section_c7, status: :created, location: @section_c7 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c7s/1
  # PUT /section_c7s/1.json
  def update
    @section_c7 = SectionC7.find(params[:id])

    respond_to do |format|
      if @section_c7.update_attributes(params[:section_c7])
        format.html { redirect_to @section_c7, notice: 'Section c7 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c7s/1
  # DELETE /section_c7s/1.json
  def destroy
    @section_c7 = SectionC7.find(params[:id])
    @section_c7.destroy

    respond_to do |format|
      format.html { redirect_to section_c7s_url }
      format.json { head :ok }
    end
  end
end
