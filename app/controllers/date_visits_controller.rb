class DateVisitsController < ApplicationController
  # GET /date_visits
  # GET /date_visits.json
  
  @student = Student.all
  @stud_profiles = StudProfile.all  
  
  def index
	user=Staff.find_by_user_id(current_user.id)
    @date_visits = user.date_visits.all
	@student =Student.find_by_user_id(params[:student])
	@stud_profiles =StudProfile.find_by_user_id(params[:student])
	

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @date_visits }
    end
  end

  # GET /date_visits/1
  # GET /date_visits/1.json
  def show
    @date_visit = DateVisit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @date_visit }
    end
  end

  # GET /date_visits/new
  # GET /date_visits/new.json
  def new
    @date_visit = DateVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @date_visit }
    end
  end

  # GET /date_visits/1/edit
  def edit
    @date_visit = DateVisit.find(params[:id])
  end

  # POST /date_visits
  # POST /date_visits.json
  def create
    #@date_visit = DateVisit.new(params[:date_visit])
    staff=Staff.find_by_user_id(current_user.id)
	@date_visit = staff.date_visits.new(params[:date_visit])
    respond_to do |format|
      if @date_visit.save
        format.html { redirect_to @date_visit, notice: 'Date visit was successfully created.' }
        format.json { render json: @date_visit, status: :created, location: @date_visit }
      else
        format.html { render action: "new" }
        format.json { render json: @date_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /date_visits/1
  # PUT /date_visits/1.json
  def update
    @date_visit = DateVisit.find(params[:id])

    respond_to do |format|
      if @date_visit.update_attributes(params[:date_visit])
        format.html { redirect_to @date_visit, notice: 'Date visit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @date_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_visits/1
  # DELETE /date_visits/1.json
  def destroy
    @date_visit = DateVisit.find(params[:id])
    @date_visit.destroy

    respond_to do |format|
      format.html { redirect_to date_visits_url }
      format.json { head :ok }
    end
  end
end
