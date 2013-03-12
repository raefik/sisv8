class InnovativeOutcomesController < ApplicationController
  # GET /innovative_outcomes
  # GET /innovative_outcomes.json
  def index
    @innovative_outcomes = InnovativeOutcome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @innovative_outcomes }
    end
  end

  # GET /innovative_outcomes/1
  # GET /innovative_outcomes/1.json
  def show
    @innovative_outcome = InnovativeOutcome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @innovative_outcome }
    end
  end

  # GET /innovative_outcomes/new
  # GET /innovative_outcomes/new.json
  def new
    @innovative_outcome = InnovativeOutcome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @innovative_outcome }
    end
  end

  # GET /innovative_outcomes/1/edit
  def edit
    @innovative_outcome = InnovativeOutcome.find(params[:id])
  end

  # POST /innovative_outcomes
  # POST /innovative_outcomes.json
  def create
    @innovative_outcome = InnovativeOutcome.new(params[:innovative_outcome])

    respond_to do |format|
      if @innovative_outcome.save
        format.html { redirect_to @innovative_outcome, notice: 'Innovative outcome was successfully created.' }
        format.json { render json: @innovative_outcome, status: :created, location: @innovative_outcome }
      else
        format.html { render action: "new" }
        format.json { render json: @innovative_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /innovative_outcomes/1
  # PUT /innovative_outcomes/1.json
  def update
    @innovative_outcome = InnovativeOutcome.find(params[:id])

    respond_to do |format|
      if @innovative_outcome.update_attributes(params[:innovative_outcome])
        format.html { redirect_to @innovative_outcome, notice: 'Innovative outcome was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @innovative_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /innovative_outcomes/1
  # DELETE /innovative_outcomes/1.json
  def destroy
    @innovative_outcome = InnovativeOutcome.find(params[:id])
    @innovative_outcome.destroy

    respond_to do |format|
      format.html { redirect_to innovative_outcomes_url }
      format.json { head :ok }
    end
  end
end
