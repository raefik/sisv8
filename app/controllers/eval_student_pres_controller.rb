class EvalStudentPresController < ApplicationController
	 # GET /eval_student_pres
  # GET /eval_student_pres.json
  def index

  end

  # GET /eval_student_pres/1
  # GET /eval_student_pres/1.json
  def show
    @eval_student_pre = EvalStudentPre.find(params[:id])
    #@total = EvalStudentPre.sum(:p1,:condition=>["id=?",@eval_student_pre])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eval_student_pre }
    end
  end

  # GET /eval_student_pres/new
  # GET /eval_student_pres/new.json
  def new
    @eval_student_pre = EvalStudentPre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eval_student_pre }
    end
  end

  # GET /eval_student_pres/1/edit
  def edit
    @eval_student_pre = EvalStudentPre.find(params[:id])
  end

  # POST /eval_student_pres
  # POST /eval_student_pres.json
  def create
    @eval_student_pre = EvalStudentPre.new(params[:eval_student_pre])

    respond_to do |format|
      if @eval_student_pre.save
        format.html { redirect_to logstudent_path, notice: 'Eval by student sv was successfully created.' }
        format.json { render json: @eval_student_pre, status: :created, location: @eval_student_pre }
      else
        format.html { render action: "new" }
        format.json { render json: @eval_student_pre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eval_student_pres/1
  # PUT /eval_student_pres/1.json
  def update
    @eval_student_pre = EvalStudentPre.find(params[:id])

    respond_to do |format|
      if @eval_student_pre.update_attributes(params[:eval_student_pre])
        format.html { redirect_to @eval_student_pre, notice: 'Eval by student sv was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eval_student_pre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eval_student_pres/1
  # DELETE /eval_student_pres/1.json
  def destroy
    @eval_student_pre = EvalStudentPre.find(params[:id])
    @eval_student_pre.destroy

    respond_to do |format|
      format.html { redirect_to eval_student_pres_url }
      format.json { head :ok }
    end
  end

end
