class GredsController < ApplicationController
  # GET /greds
  # GET /greds.json
  def index
    @greds = Gred.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @greds }
    end
  end

  # GET /greds/1
  # GET /greds/1.json
  def show
    @gred = Gred.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gred }
    end
  end

  # GET /greds/new
  # GET /greds/new.json
  def new
    @gred = Gred.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gred }
    end
  end

  # GET /greds/1/edit
  def edit
    @gred = Gred.find(params[:id])
  end

  # POST /greds
  # POST /greds.json
  def create
    @gred = Gred.new(params[:gred])

    respond_to do |format|
      if @gred.save
        format.html { redirect_to @gred, notice: 'Gred was successfully created.' }
        format.json { render json: @gred, status: :created, location: @gred }
      else
        format.html { render action: "new" }
        format.json { render json: @gred.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /greds/1
  # PUT /greds/1.json
  def update
    @gred = Gred.find(params[:id])

    respond_to do |format|
      if @gred.update_attributes(params[:gred])
        format.html { redirect_to @gred, notice: 'Gred was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gred.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greds/1
  # DELETE /greds/1.json
  def destroy
    @gred = Gred.find(params[:id])
    @gred.destroy

    respond_to do |format|
      format.html { redirect_to greds_url }
      format.json { head :ok }
    end
  end
end
