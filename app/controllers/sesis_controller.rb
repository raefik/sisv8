class SesisController < ApplicationController
  # GET /sesis
  # GET /sesis.json
  def index
    @sesis = Sesi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sesis }
    end
  end

  # GET /sesis/1
  # GET /sesis/1.json
  def show
    @sesi = Sesi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sesi }
    end
  end

  # GET /sesis/new
  # GET /sesis/new.json
  def new
    @sesi = Sesi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sesi }
    end
  end

  # GET /sesis/1/edit
  def edit
    @sesi = Sesi.find(params[:id])
  end

  # POST /sesis
  # POST /sesis.json
  def create
    @sesi = Sesi.new(params[:sesi])

    respond_to do |format|
      if @sesi.save
        format.html { redirect_to @sesi, notice: 'Sesi was successfully created.' }
        format.json { render json: @sesi, status: :created, location: @sesi }
      else
        format.html { render action: "new" }
        format.json { render json: @sesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sesis/1
  # PUT /sesis/1.json
  def update
    @sesi = Sesi.find(params[:id])

    respond_to do |format|
      if @sesi.update_attributes(params[:sesi])
        format.html { redirect_to @sesi, notice: 'Sesi was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sesis/1
  # DELETE /sesis/1.json
  def destroy
    @sesi = Sesi.find(params[:id])
    @sesi.destroy

    respond_to do |format|
      format.html { redirect_to sesis_url }
      format.json { head :ok }
    end
  end
end
