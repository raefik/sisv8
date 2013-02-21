class EmployabilitySkillsController < ApplicationController
  # GET /employability_skills
  # GET /employability_skills.json
  def index
    @employability_skills = EmployabilitySkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employability_skills }
    end
  end

  # GET /employability_skills/1
  # GET /employability_skills/1.json
  def show
    @employability_skill = EmployabilitySkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employability_skill }
    end
  end

  # GET /employability_skills/new
  # GET /employability_skills/new.json
  def new
    @employability_skill = EmployabilitySkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employability_skill }
    end
  end

  # GET /employability_skills/1/edit
  def edit
    @employability_skill = EmployabilitySkill.find(params[:id])
  end

  # POST /employability_skills
  # POST /employability_skills.json
  def create
    @employability_skill = EmployabilitySkill.new(params[:employability_skill])

    respond_to do |format|
      if @employability_skill.save
        format.html { redirect_to @employability_skill, notice: 'Employability skill was successfully created.' }
        format.json { render json: @employability_skill, status: :created, location: @employability_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @employability_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employability_skills/1
  # PUT /employability_skills/1.json
  def update
    @employability_skill = EmployabilitySkill.find(params[:id])

    respond_to do |format|
      if @employability_skill.update_attributes(params[:employability_skill])
        format.html { redirect_to @employability_skill, notice: 'Employability skill was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @employability_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employability_skills/1
  # DELETE /employability_skills/1.json
  def destroy
    @employability_skill = EmployabilitySkill.find(params[:id])
    @employability_skill.destroy

    respond_to do |format|
      format.html { redirect_to employability_skills_url }
      format.json { head :ok }
    end
  end
end
