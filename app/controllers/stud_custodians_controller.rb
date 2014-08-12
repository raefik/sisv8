class StudCustodiansController < ApplicationController
  # GET /stud_custodians
  # GET /stud_custodians.json
  def index
    @stud_custodians = StudCustodian.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_custodians }
    end
  end

  # GET /stud_custodians/1
  # GET /stud_custodians/1.json
  def show
    @stud_custodian = StudCustodian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_custodian }
    end
  end

  # GET /stud_custodians/new
  # GET /stud_custodians/new.json
  def new
    @stud_custodian = StudCustodian.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_custodian }
    end
  end

  # GET /stud_custodians/1/edit
  def edit
    @stud_custodian = StudCustodian.find(params[:id])
  end

  # POST /stud_custodians
  # POST /stud_custodians.json
  def create
    @stud_custodian = StudCustodian.new(params[:stud_custodian])

    respond_to do |format|
      if @stud_custodian.save
        format.html { redirect_to @stud_custodian, notice: 'Stud custodian was successfully created.' }
        format.json { render json: @stud_custodian, status: :created, location: @stud_custodian }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_custodian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_custodians/1
  # PUT /stud_custodians/1.json
  def update
    @stud_custodian = StudCustodian.find(params[:id])

    respond_to do |format|
      if @stud_custodian.update_attributes(params[:stud_custodian])
        format.html { redirect_to @stud_custodian.user, notice: 'Stud custodian was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_custodian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_custodians/1
  # DELETE /stud_custodians/1.json
  def destroy
    @stud_custodian = StudCustodian.find(params[:id])
    @stud_custodian.destroy

    respond_to do |format|
      format.html { redirect_to stud_custodians_url }
      format.json { head :ok }
    end
  end
end
