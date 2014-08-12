class StudInternshipsController < ApplicationController
  # GET /stud_internships
  # GET /stud_internships.json
  def index
    @stud_internships = StudInternship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_internships }
    end
  end

  # GET /stud_internships/1
  # GET /stud_internships/1.json
  def show
    @stud_internship = StudInternship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_internship }
    end
  end

  # GET /stud_internships/new
  # GET /stud_internships/new.json
  def new
    @stud_internship = StudInternship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_internship }
    end
  end

  # GET /stud_internships/1/edit
  def edit
    @stud_internship = StudInternship.find(params[:id])
  end

  # POST /stud_internships
  # POST /stud_internships.json
  def create
    @stud_internship = StudInternship.new(params[:stud_internship])

    respond_to do |format|
      if @stud_internship.save
        format.html { redirect_to @stud_internship, notice: 'Stud internship was successfully created.' }
        format.json { render json: @stud_internship, status: :created, location: @stud_internship }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_internships/1
  # PUT /stud_internships/1.json
  def update
    @stud_internship = StudInternship.find(params[:id])

    respond_to do |format|
      if @stud_internship.update_attributes(params[:stud_internship])
        format.html { redirect_to @stud_internship.user, notice: 'Stud internship was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_internships/1
  # DELETE /stud_internships/1.json
  def destroy
    @stud_internship = StudInternship.find(params[:id])
    @stud_internship.destroy

    respond_to do |format|
      format.html { redirect_to stud_internships_url }
      format.json { head :ok }
    end
  end
end
