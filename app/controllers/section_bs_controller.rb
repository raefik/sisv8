class SectionBsController < ApplicationController
  # GET /section_bs
  # GET /section_bs.json
  def index
    @section_bs = SectionB.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_bs }
    end
  end

  # GET /section_bs/1
  # GET /section_bs/1.json
  def show
    @section_b = SectionB.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_b }
    end
  end

  # GET /section_bs/new
  # GET /section_bs/new.json
  def new
    @section_b = SectionB.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_b }
    end
  end

  # GET /section_bs/1/edit
  def edit
    @section_b = SectionB.find(params[:id])
  end

  # POST /section_bs
  # POST /section_bs.json
  def create
    @section_b = SectionB.new(params[:section_b])

    respond_to do |format|
      if @section_b.save
        format.html { redirect_to @section_b, notice: 'Section b was successfully created.' }
        format.json { render json: @section_b, status: :created, location: @section_b }
      else
        format.html { render action: "new" }
        format.json { render json: @section_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_bs/1
  # PUT /section_bs/1.json
  def update
    @section_b = SectionB.find(params[:id])

    respond_to do |format|
      if @section_b.update_attributes(params[:section_b])
        format.html { redirect_to @section_b, notice: 'Section b was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_bs/1
  # DELETE /section_bs/1.json
  def destroy
    @section_b = SectionB.find(params[:id])
    @section_b.destroy

    respond_to do |format|
      format.html { redirect_to section_bs_url }
      format.json { head :ok }
    end
  end
end
