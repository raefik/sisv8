class StudReferencesController < ApplicationController
  # GET /stud_references
  # GET /stud_references.json
  def index
    @stud_references = StudReference.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_references }
    end
  end

  # GET /stud_references/1
  # GET /stud_references/1.json
  def show
    @stud_reference = StudReference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_reference }
    end
  end

  # GET /stud_references/new
  # GET /stud_references/new.json
  def new
    @stud_reference = StudReference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_reference }
    end
  end

  # GET /stud_references/1/edit
  def edit
    @stud_reference = StudReference.find(params[:id])
  end

  # POST /stud_references
  # POST /stud_references.json
  def create
    #@stud_reference = StudReference.new(params[:stud_reference])
	@stud_reference = current_user.stud_references.create(params[:stud_reference])
    respond_to do |format|
      if @stud_reference.save
        format.html { redirect_to @stud_reference.user, notice: 'Stud reference was successfully created.' }
        format.json { render json: @stud_reference, status: :created, location: @stud_reference }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_references/1
  # PUT /stud_references/1.json
  def update
    @stud_reference = StudReference.find(params[:id])

    respond_to do |format|
      if @stud_reference.update_attributes(params[:stud_reference])
        format.html { redirect_to @stud_reference.user, notice: 'Stud reference was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_references/1
  # DELETE /stud_references/1.json
  def destroy
    @stud_reference = StudReference.find(params[:id])
    @stud_reference.destroy

    respond_to do |format|
      format.html { redirect_to @stud_reference.user }
      format.json { head :ok }
    end
  end
end
