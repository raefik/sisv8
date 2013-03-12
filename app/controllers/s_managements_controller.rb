class SManagementsController < ApplicationController
  # GET /s_managements
  # GET /s_managements.json
  def index
    @s_managements = SManagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @s_managements }
    end
  end

  # GET /s_managements/1
  # GET /s_managements/1.json
  def show
    @s_management = SManagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @s_management }
    end
  end

  # GET /s_managements/new
  # GET /s_managements/new.json
  def new
    @s_management = SManagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @s_management }
    end
  end

  # GET /s_managements/1/edit
  def edit
    @s_management = SManagement.find(params[:id])
  end

  # POST /s_managements
  # POST /s_managements.json
  def create
    @s_management = SManagement.new(params[:s_management])

    respond_to do |format|
      if @s_management.save
        format.html { redirect_to @s_management, notice: 'S management was successfully created.' }
        format.json { render json: @s_management, status: :created, location: @s_management }
      else
        format.html { render action: "new" }
        format.json { render json: @s_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /s_managements/1
  # PUT /s_managements/1.json
  def update
    @s_management = SManagement.find(params[:id])

    respond_to do |format|
      if @s_management.update_attributes(params[:s_management])
        format.html { redirect_to @s_management, notice: 'S management was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @s_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s_managements/1
  # DELETE /s_managements/1.json
  def destroy
    @s_management = SManagement.find(params[:id])
    @s_management.destroy

    respond_to do |format|
      format.html { redirect_to s_managements_url }
      format.json { head :ok }
    end
  end
end
