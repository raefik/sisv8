class ESkillsController < ApplicationController
  # GET /e_skills
  # GET /e_skills.json
  def index
    @e_skills = ESkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @e_skills }
    end
  end

  # GET /e_skills/1
  # GET /e_skills/1.json
  def show
    @e_skill = ESkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @e_skill }
    end
  end

  # GET /e_skills/new
  # GET /e_skills/new.json
  def new
    @e_skill = ESkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @e_skill }
    end
  end

  # GET /e_skills/1/edit
  def edit
    @e_skill = ESkill.find(params[:id])
  end

  # POST /e_skills
  # POST /e_skills.json
  def create
    @e_skill = ESkill.new(params[:e_skill])

    respond_to do |format|
      if @e_skill.save
        format.html { redirect_to @e_skill, notice: 'E skill was successfully created.' }
        format.json { render json: @e_skill, status: :created, location: @e_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @e_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /e_skills/1
  # PUT /e_skills/1.json
  def update
    @e_skill = ESkill.find(params[:id])

    respond_to do |format|
      if @e_skill.update_attributes(params[:e_skill])
        format.html { redirect_to @e_skill, notice: 'E skill was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @e_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_skills/1
  # DELETE /e_skills/1.json
  def destroy
    @e_skill = ESkill.find(params[:id])
    @e_skill.destroy

    respond_to do |format|
      format.html { redirect_to e_skills_url }
      format.json { head :ok }
    end
  end
end
