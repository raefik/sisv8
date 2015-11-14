class EvalByAkademicSvsController < ApplicationController
  # GET /eval_by_akademic_svs
  # GET /eval_by_akademic_svs.json
  def index
    @eval_by_akademic_svs = EvalByAkademicSv.all
    @eval_by_akademic_sv = EvalByAkademicSv.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eval_by_akademic_svs }
    end
  end

  # GET /eval_by_akademic_svs/1
  # GET /eval_by_akademic_svs/1.json
  def show
    @eval_by_akademic_sv = EvalByAkademicSv.find(params[:id])
	#@total = EvalByAkademicSv.sum(:p1,:p2,:conditions=>'id=?',@eval_by_akademic_sv)
     @total = EvalByAkademicSv.sum(:p1,:conditions=>["id=?",@eval_by_akademic_sv]) 
	 @total2 = EvalByAkademicSv.sum(:p2,:conditions=>["id=?",@eval_by_akademic_sv])
	 
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eval_by_akademic_sv }
    end
  end

  # GET /eval_by_akademic_svs/new
  # GET /eval_by_akademic_svs/new.json
  def new
    @eval_by_akademic_sv = EvalByAkademicSv.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eval_by_akademic_sv }
    end
  end

  # GET /eval_by_akademic_svs/1/edit
  def edit
    @eval_by_akademic_sv = EvalByAkademicSv.find(params[:id])
  end

  # POST /eval_by_akademic_svs
  # POST /eval_by_akademic_svs.json
  def create
    @eval_by_akademic_sv = EvalByAkademicSv.new(params[:eval_by_akademic_sv])
	
    respond_to do |format|
      if @eval_by_akademic_sv.save
        format.html { redirect_to student_feedback_path, notice: 'Eval by akademic sv was successfully created.' }
        format.json { render json: @eval_by_akademic_sv, status: :created, location: @eval_by_akademic_sv }
      else
        format.html { render action: "new" }
        format.json { render json: @eval_by_akademic_sv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eval_by_akademic_svs/1
  # PUT /eval_by_akademic_svs/1.json
  def update
    @eval_by_akademic_sv = EvalByAkademicSv.find(params[:id])

    respond_to do |format|
      if @eval_by_akademic_sv.update_attributes(params[:eval_by_akademic_sv])
        format.html { redirect_to @eval_by_akademic_sv, notice: 'Eval by akademic sv was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eval_by_akademic_sv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eval_by_akademic_svs/1
  # DELETE /eval_by_akademic_svs/1.json
  def destroy
    @eval_by_akademic_sv = EvalByAkademicSv.find(params[:id])
    @eval_by_akademic_sv.destroy

    respond_to do |format|
      format.html { redirect_to eval_by_akademic_svs_url }
      format.json { head :ok }
    end
  end
end
