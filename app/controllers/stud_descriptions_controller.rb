class StudDescriptionsController < ApplicationController
  # GET /stud_descriptions
  # GET /stud_descriptions.json
  def index
    @stud_descriptions = StudDescription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_descriptions }
    end
  end

  # GET /stud_descriptions/1
  # GET /stud_descriptions/1.json
  def show
    @stud_description = StudDescription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_description }
    end
  end

  # GET /stud_descriptions/new
  # GET /stud_descriptions/new.json
  def new
    @stud_description = StudDescription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_description }
    end
  end

  # GET /stud_descriptions/1/edit
  def edit
    @stud_description = StudDescription.find(params[:id])
  end

  # POST /stud_descriptions
  # POST /stud_descriptions.json
  def create
    @stud_description = StudDescription.new(params[:stud_description])

    respond_to do |format|
      if @stud_description.save
        format.html { redirect_to @stud_description, notice: 'Stud description was successfully created.' }
        format.json { render json: @stud_description, status: :created, location: @stud_description }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_descriptions/1
  # PUT /stud_descriptions/1.json
  def update
    @stud_description = StudDescription.find(params[:id])

    respond_to do |format|
      if @stud_description.update_attributes(params[:stud_description])
        format.html { redirect_to @stud_description, notice: 'Stud description was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_descriptions/1
  # DELETE /stud_descriptions/1.json
  def destroy
    @stud_description = StudDescription.find(params[:id])
    @stud_description.destroy

    respond_to do |format|
      format.html { redirect_to stud_descriptions_url }
      format.json { head :ok }
    end
  end
end
