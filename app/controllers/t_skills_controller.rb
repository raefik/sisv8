class TSkillsController < ApplicationController
  # GET /t_skills
  # GET /t_skills.json
  def index
    @t_skills = TSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @t_skills }
    end
  end

  # GET /t_skills/1
  # GET /t_skills/1.json
  def show
    @t_skill = TSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @t_skill }
    end
  end

  # GET /t_skills/new
  # GET /t_skills/new.json
  def new
    @t_skill = TSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @t_skill }
    end
  end

  # GET /t_skills/1/edit
  def edit
    @t_skill = TSkill.find(params[:id])
  end

  # POST /t_skills
  # POST /t_skills.json
  def create
    @t_skill = TSkill.new(params[:t_skill])

    respond_to do |format|
      if @t_skill.save
        format.html { redirect_to @t_skill, notice: 'T skill was successfully created.' }
        format.json { render json: @t_skill, status: :created, location: @t_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @t_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /t_skills/1
  # PUT /t_skills/1.json
  def update
    @t_skill = TSkill.find(params[:id])

    respond_to do |format|
      if @t_skill.update_attributes(params[:t_skill])
        format.html { redirect_to @t_skill, notice: 'T skill was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @t_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_skills/1
  # DELETE /t_skills/1.json
  def destroy
    @t_skill = TSkill.find(params[:id])
    @t_skill.destroy

    respond_to do |format|
      format.html { redirect_to t_skills_url }
      format.json { head :ok }
    end
  end
end
