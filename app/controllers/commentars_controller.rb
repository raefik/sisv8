class CommentarsController < ApplicationController
  
  # GET /benefits
  # GET /benefits.json
  
  
  def student_feedback
  	if current_user.role_id != 3 
						@userCs=UserCompany.where(:company_id=>Company.find_by_user_id(current_user.id))
	else	
		studentid = StudProfile.find_all_by_staff_id(Staff.find_by_user_id(current_user.id).id).each.map do |x| 
	  		x.user_id
	  	end
		@userCs=UserCompany.where("total = ? and user_id IN (?)",2,studentid )
		#raise @userCs.to_yaml
	end
	
	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userCs }
    end
  end
  
  
  def index
    @commentars = Commentar.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commentars }
    end
  end

  def show
    @commentars = Commentar.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commentars }
    end
  end

  def new
    @commentars = Commentar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commentars }
    end
  end

  def edit
    @commentars = Commentar.find(params[:id])
  end

  def create
    @commentars = Commentar.new(params[:commentar])
    respond_to do |format|
      if @commentars.save
        format.html { redirect_to student_feedback_path, notice: 'comments was successfully created.' }
        format.json { render json: @commentars, status: :created, location: @commentars }
      else
        format.html { render action: "new" }
        format.json { render json: @commentars.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @commentars = Commentar.find(params[:id])
    respond_to do |format|
      if @commentars.update_attributes(params[:commentar])
        format.html { redirect_to student_feedback_path, notice: 'comments was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @commentars.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @commentars = Commentar.find(params[:id])
    @commentars.destroy
    respond_to do |format|
      format.html { redirect_to commentars_url }
      format.json { head :ok }
    end
  end
end
