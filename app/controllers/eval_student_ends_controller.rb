class EvalStudentEndsController < ApplicationController
	 # GET /eval_student_ends
  # GET /eval_student_ends.json
  def index

  end

  # GET /eval_student_ends/1
  # GET /eval_student_ends/1.json
  def show
    @eval_student_end = EvalStudentEnd.find(params[:id])
    #@total = EvalStudentEnd.sum(:p1,:condition=>["id=?",@eval_student_end])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eval_student_end }
    end
  end

  # GET /eval_student_ends/new
  # GET /eval_student_ends/new.json
  def new
    @eval_student_end = EvalStudentEnd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eval_student_end }
    end
  end

  # GET /eval_student_ends/1/edit
  def edit
    @eval_student_end = EvalStudentEnd.find(params[:id])
  end

  # POST /eval_student_ends
  # POST /eval_student_ends.json
  def create
    @eval_student_end = EvalStudentEnd.new(params[:eval_student_end])

    respond_to do |format|
      if @eval_student_end.save
        format.html { redirect_to logstudent_path, notice: 'Eval by student sv was successfully created.' }
        format.json { render json: @eval_student_end, status: :created, location: @eval_student_end }
      else
        format.html { render action: "new" }
        format.json { render json: @eval_student_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eval_student_ends/1
  # PUT /eval_student_ends/1.json
  def update
    @eval_student_end = EvalStudentEnd.find(params[:id])

    respond_to do |format|
      if @eval_student_end.update_attributes(params[:eval_student_end])
        format.html { redirect_to @eval_student_end, notice: 'Eval by student sv was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eval_student_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eval_student_ends/1
  # DELETE /eval_student_ends/1.json
  def destroy
    @eval_student_end = EvalStudentEnd.find(params[:id])
    @eval_student_end.destroy

    respond_to do |format|
      format.html { redirect_to eval_student_ends_url }
      format.json { head :ok }
    end
  end

end
