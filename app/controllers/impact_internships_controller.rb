class ImpactInternshipsController < ApplicationController
  # GET /impact_internships
  # GET /impact_internships.json
  def index
    @impact_internships = ImpactInternship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @impact_internships }
    end
  end

  # GET /impact_internships/1
  # GET /impact_internships/1.json
  def show
    @impact_internship = ImpactInternship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @impact_internship }
    end
  end

  # GET /impact_internships/new
  # GET /impact_internships/new.json
  def new
    @impact_internship = ImpactInternship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @impact_internship }
    end
  end

  # GET /impact_internships/1/edit
  def edit
    @impact_internship = ImpactInternship.find(params[:id])
  end

  # POST /impact_internships
  # POST /impact_internships.json
  def create
    @impact_internship = ImpactInternship.new(params[:impact_internship])

    respond_to do |format|
      if @impact_internship.save
        format.html { redirect_to @impact_internship, notice: 'Impact internship was successfully created.' }
        format.json { render json: @impact_internship, status: :created, location: @impact_internship }
      else
        format.html { render action: "new" }
        format.json { render json: @impact_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /impact_internships/1
  # PUT /impact_internships/1.json
  def update
    @impact_internship = ImpactInternship.find(params[:id])

    respond_to do |format|
      if @impact_internship.update_attributes(params[:impact_internship])
        format.html { redirect_to @impact_internship, notice: 'Impact internship was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @impact_internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impact_internships/1
  # DELETE /impact_internships/1.json
  def destroy
    @impact_internship = ImpactInternship.find(params[:id])
    @impact_internship.destroy

    respond_to do |format|
      format.html { redirect_to impact_internships_url }
      format.json { head :ok }
    end
  end
end
