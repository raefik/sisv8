class IntershipPeriodsController < ApplicationController
  # GET /intership_periods
  # GET /intership_periods.json
  def index
    @intership_periods = IntershipPeriod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intership_periods }
    end
  end

  # GET /intership_periods/1
  # GET /intership_periods/1.json
  def show
    @intership_period = IntershipPeriod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intership_period }
    end
  end

  # GET /intership_periods/new
  # GET /intership_periods/new.json
  def new
    @intership_period = IntershipPeriod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intership_period }
    end
  end

  # GET /intership_periods/1/edit
  def edit
    @intership_period = IntershipPeriod.find(params[:id])
  end

  # POST /intership_periods
  # POST /intership_periods.json
  def create
    @intership_period = IntershipPeriod.new(params[:intership_period])

    respond_to do |format|
      if @intership_period.save
        format.html { redirect_to @intership_period, notice: 'Intership period was successfully created.' }
        format.json { render json: @intership_period, status: :created, location: @intership_period }
      else
        format.html { render action: "new" }
        format.json { render json: @intership_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intership_periods/1
  # PUT /intership_periods/1.json
  def update
    @intership_period = IntershipPeriod.find(params[:id])

    respond_to do |format|
      if @intership_period.update_attributes(params[:intership_period])
        format.html { redirect_to @intership_period, notice: 'Intership period was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @intership_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intership_periods/1
  # DELETE /intership_periods/1.json
  def destroy
    @intership_period = IntershipPeriod.find(params[:id])
    @intership_period.destroy

    respond_to do |format|
      format.html { redirect_to intership_periods_url }
      format.json { head :ok }
    end
  end
end
