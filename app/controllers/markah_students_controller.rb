class MarkahStudentsController < ApplicationController
  # GET /markah_students
  # GET /markah_students.json
  def index
    @markah_students = MarkahStudent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @markah_students }
    end
  end

  # GET /markah_students/1
  # GET /markah_students/1.json
  def show
    @markah_student = MarkahStudent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @markah_student }
    end
  end

  # GET /markah_students/new
  # GET /markah_students/new.json
  def new
    @markah_student = MarkahStudent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @markah_student }
    end
  end

  # GET /markah_students/1/edit
  def edit
    @markah_student = MarkahStudent.find(params[:id])
  end

  # POST /markah_students
  # POST /markah_students.json
  def create
    staff=Staff.find_by_user_id(current_user.id)
    @markah_student = staff.markah_students.new(params[:markah_student])

    respond_to do |format|
      if @markah_student.save
        format.html { redirect_to @markah_student, notice: 'Markah student was successfully created.' }
        format.json { render json: @markah_student, status: :created, location: @markah_student }
      else
        format.html { render action: "new" }
        format.json { render json: @markah_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /markah_students/1
  # PUT /markah_students/1.json
  def update
    staff=Staff.find_by_user_id(current_user.id)
    @markah_student = staff.markah_students.find(params[:id])

    respond_to do |format|
      if @markah_student.update_attributes(params[:markah_student])
        format.html { redirect_to markah_path, notice: 'Markah student was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @markah_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markah_students/1
  # DELETE /markah_students/1.json
  def destroy
    @markah_student = MarkahStudent.find(params[:id])
    @markah_student.destroy

    respond_to do |format|
      format.html { redirect_to markah_students_url }
      format.json { head :ok }
    end
  end
end
