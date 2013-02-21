class AvailableInternshipsController < ApplicationController
  # GET /available_internships
  # GET /available_internships.json
  def index
    @available_internships = AvailableInternship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @available_internships }
    end
  end

  # GET /available_internships/1
  # GET /available_internships/1.json
  def show
    @available_internship = AvailableInternship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @available_internship }
    end
  end

  # GET /available_internships/new
  # GET /available_internships/new.json
  def new
    @available_internship = AvailableInternship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @available_internship }
    end
  end

  # GET /available_internships/1/edit
  def edit
    @available_internship = AvailableInternship.find(params[:id])
  end

  # POST /available_internships
  # POST /available_internships.json
  def create
    #@available_internship = AvailableInternship.new(params[:available_internship])
    @available_internship = current_user.available_internships.create(params[:available_internship])
    respond_to do |format|
      if @available_internship.save
        format.html { redirect_to @available_internship.user, notice: 'Available internship was successfully created.' }
        format.json { render json: @available_internship, status: :created, location: @available_internship }
      else
        format.html { render action: "new" }
        format.json { render json: @available_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /available_internships/1
  # PUT /available_internships/1.json
  def update
    @available_internship = AvailableInternship.find(params[:id])

    respond_to do |format|
      if @available_internship.update_attributes(params[:available_internship])
        format.html { redirect_to @available_internship.user, notice: 'Available internship was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @available_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_internships/1
  # DELETE /available_internships/1.json
  def destroy
    @available_internship = AvailableInternship.find(params[:id])
    @available_internship.destroy

    respond_to do |format|
      format.html { redirect_to @available_internship.user }
      format.json { head :ok }
    end
  end
end
