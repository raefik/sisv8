class TechnologySkillsController < ApplicationController
  # GET /technology_skills
  # GET /technology_skills.json
  def index
    @technology_skills = TechnologySkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @technology_skills }
    end
  end

  # GET /technology_skills/1
  # GET /technology_skills/1.json
  def show
    @technology_skill = TechnologySkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @technology_skill }
    end
  end

  # GET /technology_skills/new
  # GET /technology_skills/new.json
  def new
    @technology_skill = TechnologySkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @technology_skill }
    end
  end

  # GET /technology_skills/1/edit
  def edit
    @technology_skill = TechnologySkill.find(params[:id])
  end

  # POST /technology_skills
  # POST /technology_skills.json
  def create
    @technology_skill = TechnologySkill.new(params[:technology_skill])

    respond_to do |format|
      if @technology_skill.save
        format.html { redirect_to @technology_skill, notice: 'Technology skill was successfully created.' }
        format.json { render json: @technology_skill, status: :created, location: @technology_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @technology_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /technology_skills/1
  # PUT /technology_skills/1.json
  def update
    @technology_skill = TechnologySkill.find(params[:id])

    respond_to do |format|
      if @technology_skill.update_attributes(params[:technology_skill])
        format.html { redirect_to @technology_skill, notice: 'Technology skill was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @technology_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technology_skills/1
  # DELETE /technology_skills/1.json
  def destroy
    @technology_skill = TechnologySkill.find(params[:id])
    @technology_skill.destroy

    respond_to do |format|
      format.html { redirect_to technology_skills_url }
      format.json { head :ok }
    end
  end
end
