class StudLanguagesController < ApplicationController
  # GET /stud_languages
  # GET /stud_languages.json
  def index
    @stud_languages = StudLanguage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_languages }
    end
  end

  # GET /stud_languages/1
  # GET /stud_languages/1.json
  def show
    @stud_language = StudLanguage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_language }
    end
  end

  # GET /stud_languages/new
  # GET /stud_languages/new.json
  def new
    @stud_language = StudLanguage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_language }
    end
  end

  # GET /stud_languages/1/edit
  def edit
    @stud_language = StudLanguage.find(params[:id])
  end

  # POST /stud_languages
  # POST /stud_languages.json
  def create
    #@stud_language = StudLanguage.new(params[:stud_language])
    @stud_language =current_user.stud_languages.create(params[:stud_language])
    respond_to do |format|
      if @stud_language.save
        format.html { redirect_to @stud_language.user, notice: 'Stud language was successfully created.' }
        format.json { render json: @stud_language, status: :created, location: @stud_language }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_languages/1
  # PUT /stud_languages/1.json
  def update
    @stud_language = StudLanguage.find(params[:id])

    respond_to do |format|
      if @stud_language.update_attributes(params[:stud_language])
        format.html { redirect_to @stud_language.user, notice: 'Stud language was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_languages/1
  # DELETE /stud_languages/1.json
  def destroy
    @stud_language = StudLanguage.find(params[:id])
	#@stud_language = current_user.stud_languages.find_by_user_id(current_user.id)
    @stud_language.destroy

    respond_to do |format|
      format.html { redirect_to @stud_language.user}
      format.json { head :ok }
    end
  end
end
