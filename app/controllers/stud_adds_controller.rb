class StudAddsController < ApplicationController
  # GET /stud_adds
  # GET /stud_adds.json
  def index
    @stud_adds = StudAdd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_adds }
    end
  end

  # GET /stud_adds/1
  # GET /stud_adds/1.json
  def show
    @stud_add = StudAdd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_add }
    end
  end

  # GET /stud_adds/new
  # GET /stud_adds/new.json
  def new
    @stud_add = StudAdd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_add }
    end
  end

  # GET /stud_adds/1/edit
  def edit
    @stud_add = StudAdd.find(params[:id])
  end

  # POST /stud_adds
  # POST /stud_adds.json
  def create
    @stud_add = StudAdd.new(params[:stud_add])

    respond_to do |format|
      if @stud_add.save
        format.html { redirect_to @stud_add, notice: 'Stud add was successfully created.' }
        format.json { render json: @stud_add, status: :created, location: @stud_add }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_adds/1
  # PUT /stud_adds/1.json
  def update
    @stud_add = StudAdd.find(params[:id])

    respond_to do |format|
      if @stud_add.update_attributes(params[:stud_add])
        format.html { redirect_to @stud_add.user, notice: 'Stud add was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_adds/1
  # DELETE /stud_adds/1.json
  def destroy
    @stud_add = StudAdd.find(params[:id])
    @stud_add.destroy

    respond_to do |format|
      format.html { redirect_to stud_adds_url }
      format.json { head :ok }
    end
  end
end
