class ProgNamesController < ApplicationController
  # GET /prog_names
  # GET /prog_names.json
  def index
    @prog_names = ProgName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prog_names }
    end
  end

  # GET /prog_names/1
  # GET /prog_names/1.json
  def show
    @prog_name = ProgName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prog_name }
    end
  end

  # GET /prog_names/new
  # GET /prog_names/new.json
  def new
    @prog_name = ProgName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prog_name }
    end
  end

  # GET /prog_names/1/edit
  def edit
    @prog_name = ProgName.find(params[:id])
  end

  # POST /prog_names
  # POST /prog_names.json
  def create
    @prog_name = ProgName.new(params[:prog_name])

    respond_to do |format|
      if @prog_name.save
        format.html { redirect_to @prog_name, notice: 'Prog name was successfully created.' }
        format.json { render json: @prog_name, status: :created, location: @prog_name }
      else
        format.html { render action: "new" }
        format.json { render json: @prog_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prog_names/1
  # PUT /prog_names/1.json
  def update
    @prog_name = ProgName.find(params[:id])

    respond_to do |format|
      if @prog_name.update_attributes(params[:prog_name])
        format.html { redirect_to @prog_name, notice: 'Prog name was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prog_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prog_names/1
  # DELETE /prog_names/1.json
  def destroy
    @prog_name = ProgName.find(params[:id])
    @prog_name.destroy

    respond_to do |format|
      format.html { redirect_to prog_names_url }
      format.json { head :ok }
    end
  end
end
