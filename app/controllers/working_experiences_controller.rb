class WorkingExperiencesController < ApplicationController
  # GET /working_experiences
  # GET /working_experiences.json
  def index
    @working_experiences = WorkingExperience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @working_experiences }
    end
  end

  # GET /working_experiences/1
  # GET /working_experiences/1.json
  def show
    @working_experience = WorkingExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @working_experience }
    end
  end

  # GET /working_experiences/new
  # GET /working_experiences/new.json
  def new
    @working_experience = WorkingExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @working_experience }
    end
  end

  # GET /working_experiences/1/edit
  def edit
    @working_experience = WorkingExperience.find(params[:id])
  end

  # POST /working_experiences
  # POST /working_experiences.json
  def create
    #@working_experience = WorkingExperience.new(params[:working_experience])
    @working_experience = current_user.working_experiences.create(params[:working_experience])
    respond_to do |format|
      if @working_experience.save
        format.html { redirect_to @working_experience.user, notice: 'Working experience was successfully created.' }
        format.json { render json: @working_experience, status: :created, location: @working_experience }
      else
        format.html { render action: "new" }
        format.json { render json: @working_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /working_experiences/1
  # PUT /working_experiences/1.json
  def update
    @working_experience = WorkingExperience.find(params[:id])
    
    respond_to do |format|
      if @working_experience.update_attributes(params[:working_experience])
        format.html { redirect_to @working_experience.user, notice: 'Working experience was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @working_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_experiences/1
  # DELETE /working_experiences/1.json
  def destroy
    @working_experience = WorkingExperience.find(params[:id])
    @working_experience.destroy

    respond_to do |format|
      format.html { redirect_to @working_experience.user }
      format.json { head :ok }
    end
  end
end
