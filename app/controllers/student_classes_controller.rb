class StudentClassesController < ApplicationController
  # GET /student_classes
  # GET /student_classes.json
  def index
    staff=Staff.find_by_user_id(current_user.id)
    @student_classes = StudentClass.where(:staff_id=>staff.id).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_classes }
    end
  end

  # GET /student_classes/1
  # GET /student_classes/1.json
  def show
    @student_class = StudentClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_class }
    end
  end

  # GET /student_classes/new
  # GET /student_classes/new.json
  def new
    @student_class = StudentClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_class }
    end
  end

  # GET /student_classes/1/edit
  def edit
    @student_class = StudentClass.find(params[:id])
  end

  # POST /student_classes
  # POST /student_classes.json
  def create
	user=current_user
	@kpi=Staff.find_by_user_id(user.id)
    #@student_class = StudentClass.new(params[:student_class])
	@student_class = @kpi.student_classes.create(params[:student_class])

    respond_to do |format|
      if @student_class.save
        format.html { redirect_to student_classes_path, notice: 'Student class was successfully created.' }
        format.json { render json: @student_class, status: :created, location: @student_class }
      else
        format.html { render action: "new" }
        format.json { render json: @student_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_classes/1
  # PUT /student_classes/1.json
  def update
    @student_class = StudentClass.find(params[:id])

    respond_to do |format|
      if @student_class.update_attributes(params[:student_class])
        format.html { redirect_to @student_class, notice: 'Student class was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_classes/1
  # DELETE /student_classes/1.json
  def destroy
    @student_class = StudentClass.find(params[:id])
    @student_class.destroy

    respond_to do |format|
      format.html { redirect_to student_classes_url }
      format.json { head :ok }
    end
  end
end
