class CompAdvsController < ApplicationController
  # GET /comp_advs
  # GET /comp_advs.json
  def index
    @comp_advs = CompAdv.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comp_advs }
    end
  end

  # GET /comp_advs/1
  # GET /comp_advs/1.json
  def show
    @comp_adv = CompAdv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comp_adv }
    end
  end

  # GET /comp_advs/new
  # GET /comp_advs/new.json
  def new
    @comp_adv = CompAdv.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comp_adv }
    end
  end

  # GET /comp_advs/1/edit
  def edit
    @comp_adv = CompAdv.find(params[:id])
  end

  # POST /comp_advs
  # POST /comp_advs.json
  def create
    @comp_adv = CompAdv.new(params[:comp_adv])

    respond_to do |format|
      if @comp_adv.save
        format.html { redirect_to @comp_adv, notice: 'Comp adv was successfully created.' }
        format.json { render json: @comp_adv, status: :created, location: @comp_adv }
      else
        format.html { render action: "new" }
        format.json { render json: @comp_adv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comp_advs/1
  # PUT /comp_advs/1.json
  def update
    @comp_adv = CompAdv.find(params[:id])

    respond_to do |format|
      if @comp_adv.update_attributes(params[:comp_adv])
        format.html { redirect_to @comp_adv.user, notice: 'Comp adv was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comp_adv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comp_advs/1
  # DELETE /comp_advs/1.json
  def destroy
    @comp_adv = CompAdv.find(params[:id])
    @comp_adv.destroy

    respond_to do |format|
      format.html { redirect_to @comp_adv.user }
      format.json { head :ok }
    end
  end
end
