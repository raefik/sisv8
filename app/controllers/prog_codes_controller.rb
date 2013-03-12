class ProgCodesController < ApplicationController
  # GET /prog_codes
  # GET /prog_codes.json
  def index
    @prog_codes = ProgCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prog_codes }
    end
  end

  # GET /prog_codes/1
  # GET /prog_codes/1.json
  def show
    @prog_code = ProgCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prog_code }
    end
  end

  # GET /prog_codes/new
  # GET /prog_codes/new.json
  def new
    @prog_code = ProgCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prog_code }
    end
  end

  # GET /prog_codes/1/edit
  def edit
    @prog_code = ProgCode.find(params[:id])
  end

  # POST /prog_codes
  # POST /prog_codes.json
  def create
    @prog_code = ProgCode.new(params[:prog_code])

    respond_to do |format|
      if @prog_code.save
        format.html { redirect_to @prog_code, notice: 'Prog code was successfully created.' }
        format.json { render json: @prog_code, status: :created, location: @prog_code }
      else
        format.html { render action: "new" }
        format.json { render json: @prog_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prog_codes/1
  # PUT /prog_codes/1.json
  def update
    @prog_code = ProgCode.find(params[:id])

    respond_to do |format|
      if @prog_code.update_attributes(params[:prog_code])
        format.html { redirect_to @prog_code, notice: 'Prog code was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prog_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prog_codes/1
  # DELETE /prog_codes/1.json
  def destroy
    @prog_code = ProgCode.find(params[:id])
    @prog_code.destroy

    respond_to do |format|
      format.html { redirect_to prog_codes_url }
      format.json { head :ok }
    end
  end
end
