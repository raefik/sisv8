class PSolvingsController < ApplicationController
  # GET /p_solvings
  # GET /p_solvings.json
  def index
    @p_solvings = PSolving.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @p_solvings }
    end
  end

  # GET /p_solvings/1
  # GET /p_solvings/1.json
  def show
    @p_solving = PSolving.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @p_solving }
    end
  end

  # GET /p_solvings/new
  # GET /p_solvings/new.json
  def new
    @p_solving = PSolving.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @p_solving }
    end
  end

  # GET /p_solvings/1/edit
  def edit
    @p_solving = PSolving.find(params[:id])
  end

  # POST /p_solvings
  # POST /p_solvings.json
  def create
    @p_solving = PSolving.new(params[:p_solving])

    respond_to do |format|
      if @p_solving.save
        format.html { redirect_to @p_solving, notice: 'P solving was successfully created.' }
        format.json { render json: @p_solving, status: :created, location: @p_solving }
      else
        format.html { render action: "new" }
        format.json { render json: @p_solving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /p_solvings/1
  # PUT /p_solvings/1.json
  def update
    @p_solving = PSolving.find(params[:id])

    respond_to do |format|
      if @p_solving.update_attributes(params[:p_solving])
        format.html { redirect_to @p_solving, notice: 'P solving was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @p_solving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_solvings/1
  # DELETE /p_solvings/1.json
  def destroy
    @p_solving = PSolving.find(params[:id])
    @p_solving.destroy

    respond_to do |format|
      format.html { redirect_to p_solvings_url }
      format.json { head :ok }
    end
  end
end
