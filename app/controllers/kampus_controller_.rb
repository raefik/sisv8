class KampusController < ApplicationController
  # GET /kampus
  # GET /kampus.json
  def index
    @kampus = Kampu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kampus }
    end
  end

  # GET /kampus/1
  # GET /kampus/1.json
  def show
    @kampu = Kampu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kampu }
    end
  end

  # GET /kampus/new
  # GET /kampus/new.json
  def new
    @kampu = Kampu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kampu }
    end
  end

  # GET /kampus/1/edit
  def edit
    @kampu = Kampu.find(params[:id])
  end

  # POST /kampus
  # POST /kampus.json
  def create
    @kampu = Kampu.new(params[:kampu])

    respond_to do |format|
      if @kampu.save
        format.html { redirect_to @kampu, notice: 'Kampu was successfully created.' }
        format.json { render json: @kampu, status: :created, location: @kampu }
      else
        format.html { render action: "new" }
        format.json { render json: @kampu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kampus/1
  # PUT /kampus/1.json
  def update
    @kampu = Kampu.find(params[:id])

    respond_to do |format|
      if @kampu.update_attributes(params[:kampu])
        format.html { redirect_to @kampu, notice: 'Kampu was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @kampu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kampus/1
  # DELETE /kampus/1.json
  def destroy
    @kampu = Kampu.find(params[:id])
    @kampu.destroy

    respond_to do |format|
      format.html { redirect_to kampus_url }
      format.json { head :ok }
    end
  end
  
  def erase
  	id = params[:id]
  	lb = Kampu.find(id)
	  	if lb.delete
		  	respond_to do |format|
		      format.html { redirect_to kampus_url }
		      format.json { head :ok }
		    end
		end    
  end
end
