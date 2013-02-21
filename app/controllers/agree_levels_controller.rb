class AgreeLevelsController < ApplicationController
  # GET /agree_levels
  # GET /agree_levels.json
  def index
    @agree_levels = AgreeLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agree_levels }
    end
  end

  # GET /agree_levels/1
  # GET /agree_levels/1.json
  def show
    @agree_level = AgreeLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agree_level }
    end
  end

  # GET /agree_levels/new
  # GET /agree_levels/new.json
  def new
    @agree_level = AgreeLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agree_level }
    end
  end

  # GET /agree_levels/1/edit
  def edit
    @agree_level = AgreeLevel.find(params[:id])
  end

  # POST /agree_levels
  # POST /agree_levels.json
  def create
    @agree_level = AgreeLevel.new(params[:agree_level])

    respond_to do |format|
      if @agree_level.save
        format.html { redirect_to @agree_level, notice: 'Agree level was successfully created.' }
        format.json { render json: @agree_level, status: :created, location: @agree_level }
      else
        format.html { render action: "new" }
        format.json { render json: @agree_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agree_levels/1
  # PUT /agree_levels/1.json
  def update
    @agree_level = AgreeLevel.find(params[:id])

    respond_to do |format|
      if @agree_level.update_attributes(params[:agree_level])
        format.html { redirect_to @agree_level, notice: 'Agree level was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @agree_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agree_levels/1
  # DELETE /agree_levels/1.json
  def destroy
    @agree_level = AgreeLevel.find(params[:id])
    @agree_level.destroy

    respond_to do |format|
      format.html { redirect_to agree_levels_url }
      format.json { head :ok }
    end
  end
end
