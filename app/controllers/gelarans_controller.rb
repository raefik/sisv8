class GelaransController < ApplicationController
  # GET /gelarans
  # GET /gelarans.json
  def index
    @gelarans = Gelaran.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gelarans }
    end
  end

  # GET /gelarans/1
  # GET /gelarans/1.json
  def show
    @gelaran = Gelaran.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gelaran }
    end
  end

  # GET /gelarans/new
  # GET /gelarans/new.json
  def new
    @gelaran = Gelaran.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gelaran }
    end
  end

  # GET /gelarans/1/edit
  def edit
    @gelaran = Gelaran.find(params[:id])
  end

  # POST /gelarans
  # POST /gelarans.json
  def create
    @gelaran = Gelaran.new(params[:gelaran])

    respond_to do |format|
      if @gelaran.save
        format.html { redirect_to @gelaran, notice: 'Gelaran was successfully created.' }
        format.json { render json: @gelaran, status: :created, location: @gelaran }
      else
        format.html { render action: "new" }
        format.json { render json: @gelaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gelarans/1
  # PUT /gelarans/1.json
  def update
    @gelaran = Gelaran.find(params[:id])

    respond_to do |format|
      if @gelaran.update_attributes(params[:gelaran])
        format.html { redirect_to @gelaran, notice: 'Gelaran was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gelaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gelarans/1
  # DELETE /gelarans/1.json
  def destroy
    @gelaran = Gelaran.find(params[:id])
    @gelaran.destroy

    respond_to do |format|
      format.html { redirect_to gelarans_url }
      format.json { head :ok }
    end
  end
end
