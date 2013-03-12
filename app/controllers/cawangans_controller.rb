class CawangansController < ApplicationController
  # GET /cawangans
  # GET /cawangans.json
  def index
    @cawangans = Cawangan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cawangans }
    end
  end

  # GET /cawangans/1
  # GET /cawangans/1.json
  def show
    @cawangan = Cawangan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cawangan }
    end
  end

  # GET /cawangans/new
  # GET /cawangans/new.json
  def new
    @cawangan = Cawangan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cawangan }
    end
  end

  # GET /cawangans/1/edit
  def edit
    @cawangan = Cawangan.find(params[:id])
  end

  # POST /cawangans
  # POST /cawangans.json
  def create
    @cawangan = Cawangan.new(params[:cawangan])

    respond_to do |format|
      if @cawangan.save
        format.html { redirect_to @cawangan, notice: 'Cawangan was successfully created.' }
        format.json { render json: @cawangan, status: :created, location: @cawangan }
      else
        format.html { render action: "new" }
        format.json { render json: @cawangan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cawangans/1
  # PUT /cawangans/1.json
  def update
    @cawangan = Cawangan.find(params[:id])

    respond_to do |format|
      if @cawangan.update_attributes(params[:cawangan])
        format.html { redirect_to @cawangan, notice: 'Cawangan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cawangan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cawangans/1
  # DELETE /cawangans/1.json
  def destroy
    @cawangan = Cawangan.find(params[:id])
    @cawangan.destroy

    respond_to do |format|
      format.html { redirect_to cawangans_url }
      format.json { head :ok }
    end
  end
end
