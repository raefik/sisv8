class StudProfilesController < ApplicationController
  # GET /stud_profiles
  # GET /stud_profiles.json
  
  def studentsuper
    @stud_profiles = StudProfile.where(:user_id=>current_user.id)
	@date_visits = DateVisit.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => {	:stud_profiles => @stud_profiles,
                                  :date_visits => @date_visits }}
    end
  end
  
  
  def index
    @stud_profiles = StudProfile.all  
	@stud_add = StudAdd.all
	@stud_edu = StudEdu.all
  
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_profiles }
    end
  end

  # GET /stud_profiles/1
  # GET /stud_profiles/1.json
  def show
    @stud_profile = StudProfile.find(params[:id])
	@stud_add =  StudAdd.find_by_user_id(@stud_profile.user_id)
	@stud_edu =  StudEdu.find_by_user_id(@stud_profile.user_id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_profile }
    end
  end

  # GET /stud_profiles/new
  # GET /stud_profiles/new.json
  def new
    @stud_profile = StudProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_profile }
    end
  end

  # GET /stud_profiles/1/edit
  def edit
    @stud_profile = StudProfile.find(params[:id])
  end

  # POST /stud_profiles
  # POST /stud_profiles.json
  def create
    @stud_profile = StudProfile.new(params[:stud_profile])

    respond_to do |format|
      if @stud_profile.save
        format.html { redirect_to @stud_profile.user, notice: 'Stud profile was successfully created.' }
        format.json { render json: @stud_profile, status: :created, location: @stud_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_profiles/1
  # PUT /stud_profiles/1.json
  def update
    @stud_profile = StudProfile.find(params[:id])
	
      if params[:stud_profile][:buku_log]||params[:stud_profile][:penyelia]||params[:stud_profile][:laporan]||params[:stud_profile][:gred_id]||params[:stud_profile][:catatan]
	    @stud_profile.update_attributes(:buku_log=>params[:stud_profile][:buku_log],:penyelia=>params[:stud_profile][:penyelia],:laporan=>params[:stud_profile][:laporan],:gred_id=>params[:stud_profile][:gred_id],:catatan=>params[:stud_profile][:catatan])
	     flash[:error]= 'Stud profile was successfully updated.'
         redirect_to markah_path 
		  return
      else
	  if params[:stud_profile][:staff_id]
	     @stud_profile.update_attributes(:staff_id=>params[:stud_profile][:staff_id])
	     flash[:error]= 'Stud profile was successfully updated.'
         redirect_to search_student_path 
		  return
	  else
	  if params[:stud_profile][:matric_no]||params[:stud_profile][:nric]||params[:stud_profile][:gender_id]||params[:stud_profile][:patient_history]||params[:stud_profile][:disease_description]||params[:stud_profile][:hp_no]||params[:stud_profile][:second_email]
	     @stud_profile.update_attributes(params[:stud_profile])
	     flash[:error]= 'Stud profile was successfully updated.'
         redirect_to @stud_profile.user
		  return
      end
	  end
	  end
   
    
  end

  # DELETE /stud_profiles/1
  # DELETE /stud_profiles/1.json
  def destroy
    @stud_profile = StudProfile.find(params[:id])
    @stud_profile.destroy

    respond_to do |format|
      format.html { redirect_to stud_profiles_url }
      format.json { head :ok }
    end
  end
end
