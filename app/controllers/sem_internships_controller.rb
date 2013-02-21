class SemInternshipsController < ApplicationController
  # GET /sem_internships
  # GET /sem_internships.json
  def index
    @sem_internships = SemInternship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sem_internships }
    end
  end

  # GET /sem_internships/1
  # GET /sem_internships/1.json
  def show
    @sem_internship = SemInternship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sem_internship }
    end
  end

  # GET /sem_internships/new
  # GET /sem_internships/new.json
  def new
    @sem_internship = SemInternship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sem_internship }
    end
  end

  # GET /sem_internships/1/edit
  def edit
    @sem_internship = SemInternship.find(params[:id])
  end

  # POST /sem_internships
  # POST /sem_internships.json
  def create
    @sem_internship = SemInternship.new(params[:sem_internship])

    respond_to do |format|
      if @sem_internship.save
        format.html { redirect_to @sem_internship, notice: 'Sem internship was successfully created.' }
        format.json { render json: @sem_internship, status: :created, location: @sem_internship }
      else
        format.html { render action: "new" }
        format.json { render json: @sem_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sem_internships/1
  # PUT /sem_internships/1.json
  def update
    @sem_internship = SemInternship.find(params[:id])

    respond_to do |format|
      if @sem_internship.update_attributes(params[:sem_internship])
        format.html { redirect_to @sem_internship, notice: 'Sem internship was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sem_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sem_internships/1
  # DELETE /sem_internships/1.json
  def destroy
    @sem_internship = SemInternship.find(params[:id])
    @sem_internship.destroy

    respond_to do |format|
      format.html { redirect_to sem_internships_url }
      format.json { head :ok }
    end
  end
end
