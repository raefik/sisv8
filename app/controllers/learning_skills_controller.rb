class LearningSkillsController < ApplicationController
  # GET /learning_skills
  # GET /learning_skills.json
  def index
    @learning_skills = LearningSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @learning_skills }
    end
  end

  # GET /learning_skills/1
  # GET /learning_skills/1.json
  def show
    @learning_skill = LearningSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @learning_skill }
    end
  end

  # GET /learning_skills/new
  # GET /learning_skills/new.json
  def new
    @learning_skill = LearningSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @learning_skill }
    end
  end

  # GET /learning_skills/1/edit
  def edit
    @learning_skill = LearningSkill.find(params[:id])
  end

  # POST /learning_skills
  # POST /learning_skills.json
  def create
    @learning_skill = LearningSkill.new(params[:learning_skill])

    respond_to do |format|
      if @learning_skill.save
        format.html { redirect_to @learning_skill, notice: 'Learning skill was successfully created.' }
        format.json { render json: @learning_skill, status: :created, location: @learning_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @learning_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /learning_skills/1
  # PUT /learning_skills/1.json
  def update
    @learning_skill = LearningSkill.find(params[:id])

    respond_to do |format|
      if @learning_skill.update_attributes(params[:learning_skill])
        format.html { redirect_to @learning_skill, notice: 'Learning skill was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @learning_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learning_skills/1
  # DELETE /learning_skills/1.json
  def destroy
    @learning_skill = LearningSkill.find(params[:id])
    @learning_skill.destroy

    respond_to do |format|
      format.html { redirect_to learning_skills_url }
      format.json { head :ok }
    end
  end
end
