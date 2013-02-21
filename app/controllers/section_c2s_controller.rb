class SectionC2sController < ApplicationController
  # GET /section_c2s
  # GET /section_c2s.json
  def index
    @section_c2s = SectionC2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_c2s }
    end
  end

  # GET /section_c2s/1
  # GET /section_c2s/1.json
  def show
    @section_c2 = SectionC2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_c2 }
    end
  end

  # GET /section_c2s/new
  # GET /section_c2s/new.json
  def new
    @section_c2 = SectionC2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_c2 }
    end
  end

  # GET /section_c2s/1/edit
  def edit
    @section_c2 = SectionC2.find(params[:id])
  end

  # POST /section_c2s
  # POST /section_c2s.json
  def create
    @section_c2 = SectionC2.new(params[:section_c2])

    respond_to do |format|
      if @section_c2.save
        format.html { redirect_to @section_c2, notice: 'Section c2 was successfully created.' }
        format.json { render json: @section_c2, status: :created, location: @section_c2 }
      else
        format.html { render action: "new" }
        format.json { render json: @section_c2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_c2s/1
  # PUT /section_c2s/1.json
  def update
    @section_c2 = SectionC2.find(params[:id])

    respond_to do |format|
      if @section_c2.update_attributes(params[:section_c2])
        format.html { redirect_to @section_c2, notice: 'Section c2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_c2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_c2s/1
  # DELETE /section_c2s/1.json
  def destroy
    @section_c2 = SectionC2.find(params[:id])
    @section_c2.destroy

    respond_to do |format|
      format.html { redirect_to section_c2s_url }
      format.json { head :ok }
    end
  end
end
