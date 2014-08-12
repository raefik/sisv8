class EvalByIndustrySvsController < ApplicationController
  # GET /eval_by_industry_svs
  # GET /eval_by_industry_svs.json
  def index
    @eval_by_industry_svs = EvalByIndustrySv.all
    @eval_by_industry_sv = EvalByIndustrySv.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eval_by_industry_svs }
    end
  end

  # GET /eval_by_industry_svs/1
  # GET /eval_by_industry_svs/1.json
  def show
    @eval_by_industry_sv = EvalByIndustrySv.find(params[:id])
    #@total = EvalByIndustrySv.sum(:p1,:condition=>["id=?",@eval_by_industry_sv])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eval_by_industry_sv }
    end
  end

  # GET /eval_by_industry_svs/new
  # GET /eval_by_industry_svs/new.json
  def new
    @eval_by_industry_sv = EvalByIndustrySv.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eval_by_industry_sv }
    end
  end

  # GET /eval_by_industry_svs/1/edit
  def edit
    @eval_by_industry_sv = EvalByIndustrySv.find(params[:id])
  end

  # POST /eval_by_industry_svs
  # POST /eval_by_industry_svs.json
  def create
    @eval_by_industry_sv = EvalByIndustrySv.new(params[:eval_by_industry_sv])

    respond_to do |format|
      if @eval_by_industry_sv.save
        format.html { redirect_to student_feedback_path, notice: 'Eval by industry sv was successfully created.' }
        format.json { render json: @eval_by_industry_sv, status: :created, location: @eval_by_industry_sv }
      else
        format.html { render action: "new" }
        format.json { render json: @eval_by_industry_sv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eval_by_industry_svs/1
  # PUT /eval_by_industry_svs/1.json
  def update
    @eval_by_industry_sv = EvalByIndustrySv.find(params[:id])

    respond_to do |format|
      if @eval_by_industry_sv.update_attributes(params[:eval_by_industry_sv])
        format.html { redirect_to student_feedback_path, notice: 'Eval by industry sv was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eval_by_industry_sv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eval_by_industry_svs/1
  # DELETE /eval_by_industry_svs/1.json
  def destroy
    @eval_by_industry_sv = EvalByIndustrySv.find(params[:id])
    @eval_by_industry_sv.destroy

    respond_to do |format|
      format.html { redirect_to eval_by_industry_svs_url }
      format.json { head :ok }
    end
  end
end
