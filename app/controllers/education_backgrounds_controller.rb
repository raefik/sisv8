class EducationBackgroundsController < ApplicationController
  # GET /education_backgrounds
  # GET /education_backgrounds.json
  def index
    @education_backgrounds = EducationBackground.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @education_backgrounds }
    end
  end

  # GET /education_backgrounds/1
  # GET /education_backgrounds/1.json
  def show
    @education_background = EducationBackground.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @education_background }
    end
  end

  # GET /education_backgrounds/new
  # GET /education_backgrounds/new.json
  def new
    @education_background = EducationBackground.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @education_background }
    end
  end

  # GET /education_backgrounds/1/edit
  def edit
    @education_background = EducationBackground.find(params[:id])
  end

  # POST /education_backgrounds
  # POST /education_backgrounds.json
  def create
    #@education_background = EducationBackground.new(params[:education_background])
    @education_background = current_user.education_backgrounds.create(params[:education_background])
    respond_to do |format|
      if @education_background.save
        format.html { redirect_to @education_background.user, notice: 'Education background was successfully created.' }
        format.json { render json: @education_background, status: :created, location: @education_background }
      else
        format.html { render action: "new" }
        format.json { render json: @education_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /education_backgrounds/1
  # PUT /education_backgrounds/1.json
  def update
    @education_background = EducationBackground.find(params[:id])

    respond_to do |format|
      if @education_background.update_attributes(params[:education_background])
        format.html { redirect_to @education_background.user, notice: 'Education background was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @education_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_backgrounds/1
  # DELETE /education_backgrounds/1.json
  def destroy
    @education_background = EducationBackground.find(params[:id])
    @education_background.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :ok }
    end
  end
end
