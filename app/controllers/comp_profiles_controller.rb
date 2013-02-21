class CompProfilesController < ApplicationController
  # GET /comp_profiles
  # GET /comp_profiles.json
  def index
    @comp_profiles = CompProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comp_profiles }
    end
  end

  # GET /comp_profiles/1
  # GET /comp_profiles/1.json
  def show
    @comp_profile = CompProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comp_profile }
    end
  end

  # GET /comp_profiles/new
  # GET /comp_profiles/new.json
  def new
    @comp_profile = CompProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comp_profile }
    end
  end

  # GET /comp_profiles/1/edit
  def edit
    @comp_profile = CompProfile.find(params[:id])
  end

  # POST /comp_profiles
  # POST /comp_profiles.json
  def create
    @comp_profile = CompProfile.new(params[:comp_profile])

    respond_to do |format|
      if @comp_profile.save
        format.html { redirect_to @comp_profile, notice: 'Comp profile was successfully created.' }
        format.json { render json: @comp_profile, status: :created, location: @comp_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @comp_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comp_profiles/1
  # PUT /comp_profiles/1.json
  def update
    @comp_profile = CompProfile.find(params[:id])

    respond_to do |format|
      if @comp_profile.update_attributes(params[:comp_profile])
        format.html { redirect_to @comp_profile.user, notice: 'Comp profile was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comp_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comp_profiles/1
  # DELETE /comp_profiles/1.json
  def destroy
    @comp_profile = CompProfile.find(params[:id])
    @comp_profile.destroy

    respond_to do |format|
      format.html { redirect_to comp_profiles_url }
      format.json { head :ok }
    end
  end
end
