class PlanningsController < ApplicationController
  # GET /plannings
  # GET /plannings.json
  def index
    @plannings = Planning.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plannings }
    end
  end

  # GET /plannings/1
  # GET /plannings/1.json
  def show
    @planning = Planning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @planning }
    end
  end

  # GET /plannings/new
  # GET /plannings/new.json
  def new
    @planning = Planning.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @planning }
    end
  end

  # GET /plannings/1/edit
  def edit
    @planning = Planning.find(params[:id])
  end

  # POST /plannings
  # POST /plannings.json
  def create
    @planning = Planning.new(params[:planning])

    respond_to do |format|
      if @planning.save
        format.html { redirect_to @planning, notice: 'Planning was successfully created.' }
        format.json { render json: @planning, status: :created, location: @planning }
      else
        format.html { render action: "new" }
        format.json { render json: @planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plannings/1
  # PUT /plannings/1.json
  def update
    @planning = Planning.find(params[:id])

    respond_to do |format|
      if @planning.update_attributes(params[:planning])
        format.html { redirect_to @planning, notice: 'Planning was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plannings/1
  # DELETE /plannings/1.json
  def destroy
    @planning = Planning.find(params[:id])
    @planning.destroy

    respond_to do |format|
      format.html { redirect_to plannings_url }
      format.json { head :ok }
    end
  end
end
