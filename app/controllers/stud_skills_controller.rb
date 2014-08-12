class StudSkillsController < ApplicationController
  # GET /stud_skills
  # GET /stud_skills.json
  def index
    @stud_skills = StudSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_skills }
    end
  end

  # GET /stud_skills/1
  # GET /stud_skills/1.json
  def show
    @stud_skill = StudSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_skill }
    end
  end

  # GET /stud_skills/new
  # GET /stud_skills/new.json
  def new
    @stud_skill = StudSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_skill }
    end
  end

  # GET /stud_skills/1/edit
  def edit
    @stud_skill = StudSkill.find(params[:id])
  end

  # POST /stud_skills
  # POST /stud_skills.json
  def create
    #@stud_skill = StudSkill.new(params[:stud_skill])
	@stud_skill = current_user.stud_skills.create(params[:stud_skill])

    respond_to do |format|
      if @stud_skill.save
        format.html { redirect_to @stud_skill.user, notice: 'Stud skill was successfully created.' }
        format.json { render json: @stud_skill, status: :created, location: @stud_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_skills/1
  # PUT /stud_skills/1.json
  def update
    @stud_skill = StudSkill.find(params[:id])

    respond_to do |format|
      if @stud_skill.update_attributes(params[:stud_skill])
        format.html { redirect_to @stud_skill, notice: 'Stud skill was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_skills/1
  # DELETE /stud_skills/1.json
  def destroy
    @stud_skill = StudSkill.find(params[:id])
    @stud_skill.destroy

    respond_to do |format|
      format.html { redirect_to @stud_skill.user }
      format.json { head :ok }
    end
  end
end
