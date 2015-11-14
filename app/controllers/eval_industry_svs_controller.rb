class EvalIndustrySvsController < ApplicationController
  # GET /eval_industry_svs
  # GET /eval_industry_svs.json
  def index
    @eval_industry_svs = EvalIndustrySv.all
	 @eval_industry_sv = EvalIndustrySv.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eval_industry_svs }
    end
  end

  # GET /eval_industry_svs/1
  # GET /eval_industry_svs/1.json
  def show
    @eval_industry_sv = EvalIndustrySv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eval_industry_sv }
    end
  end

  # GET /eval_industry_svs/new
  # GET /eval_industry_svs/new.json
  def new
    @eval_industry_sv = EvalIndustrySv.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eval_industry_sv }
    end
  end

  # GET /eval_industry_svs/1/edit
  def edit
    @eval_industry_sv = EvalIndustrySv.find(params[:id])
  end

  # POST /eval_industry_svs
  # POST /eval_industry_svs.json
  def create
    @eval_industry_sv = EvalIndustrySv.new(params[:eval_industry_sv])

    respond_to do |format|
      if @eval_industry_sv.save
        format.html { redirect_to @eval_industry_sv, notice: 'Eval industry sv was successfully created.' }
        format.json { render json: @eval_industry_sv, status: :created, location: @eval_industry_sv }
      else
        format.html { render action: "new" }
        format.json { render json: @eval_industry_sv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eval_industry_svs/1
  # PUT /eval_industry_svs/1.json
  def update
    @eval_industry_sv = EvalIndustrySv.find(params[:id])

    respond_to do |format|
      if @eval_industry_sv.update_attributes(params[:eval_industry_sv])
        format.html { redirect_to @eval_industry_sv, notice: 'Eval industry sv was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eval_industry_sv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eval_industry_svs/1
  # DELETE /eval_industry_svs/1.json
  def destroy
    @eval_industry_sv = EvalIndustrySv.find(params[:id])
    @eval_industry_sv.destroy

    respond_to do |format|
      format.html { redirect_to eval_industry_svs_url }
      format.json { head :ok }
    end
  end
end
