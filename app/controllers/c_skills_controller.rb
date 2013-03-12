class CSkillsController < ApplicationController
  # GET /c_skills
  # GET /c_skills.json
  def index
    @c_skills = CSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @c_skills }
    end
  end

  # GET /c_skills/1
  # GET /c_skills/1.json
  def show
    @c_skill = CSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @c_skill }
    end
  end

  # GET /c_skills/new
  # GET /c_skills/new.json
  def new
    @c_skill = CSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @c_skill }
    end
  end

  # GET /c_skills/1/edit
  def edit
    @c_skill = CSkill.find(params[:id])
  end

  # POST /c_skills
  # POST /c_skills.json
  def create
    @c_skill = CSkill.new(params[:c_skill])

    respond_to do |format|
      if @c_skill.save
        format.html { redirect_to @c_skill, notice: 'C skill was successfully created.' }
        format.json { render json: @c_skill, status: :created, location: @c_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @c_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /c_skills/1
  # PUT /c_skills/1.json
  def update
    @c_skill = CSkill.find(params[:id])

    respond_to do |format|
      if @c_skill.update_attributes(params[:c_skill])
        format.html { redirect_to @c_skill, notice: 'C skill was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @c_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_skills/1
  # DELETE /c_skills/1.json
  def destroy
    @c_skill = CSkill.find(params[:id])
    @c_skill.destroy

    respond_to do |format|
      format.html { redirect_to c_skills_url }
      format.json { head :ok }
    end
  end
end
