class ActionStatusesController < ApplicationController
  # GET /action_statuses
  # GET /action_statuses.json
  def index
    @action_statuses = ActionStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @action_statuses }
    end
  end

  # GET /action_statuses/1
  # GET /action_statuses/1.json
  def show
    @action_status = ActionStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @action_status }
    end
  end

  # GET /action_statuses/new
  # GET /action_statuses/new.json
  def new
    @action_status = ActionStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @action_status }
    end
  end

  # GET /action_statuses/1/edit
  def edit
    @action_status = ActionStatus.find(params[:id])
  end

  # POST /action_statuses
  # POST /action_statuses.json
  def create
    @action_status = ActionStatus.new(params[:action_status])

    respond_to do |format|
      if @action_status.save
        format.html { redirect_to @action_status, notice: 'Action status was successfully created.' }
        format.json { render json: @action_status, status: :created, location: @action_status }
      else
        format.html { render action: "new" }
        format.json { render json: @action_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /action_statuses/1
  # PUT /action_statuses/1.json
  def update
    @action_status = ActionStatus.find(params[:id])

    respond_to do |format|
      if @action_status.update_attributes(params[:action_status])
        format.html { redirect_to @action_status, notice: 'Action status was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @action_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_statuses/1
  # DELETE /action_statuses/1.json
  def destroy
    @action_status = ActionStatus.find(params[:id])
    @action_status.destroy

    respond_to do |format|
      format.html { redirect_to action_statuses_url }
      format.json { head :ok }
    end
  end
end
