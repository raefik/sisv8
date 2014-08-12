class StudEdusController < ApplicationController
  # GET /stud_edus
  # GET /stud_edus.json
  def index
    @stud_edus = StudEdu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stud_edus }
    end
  end

  # GET /stud_edus/1
  # GET /stud_edus/1.json
  def show
    @stud_edu = StudEdu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stud_edu }
    end
  end

  # GET /stud_edus/new
  # GET /stud_edus/new.json
  def new
    @stud_edu = StudEdu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stud_edu }
    end
  end

  # GET /stud_edus/1/edit
  def edit
    @stud_edu = StudEdu.find(params[:id])
  end

  # POST /stud_edus
  # POST /stud_edus.json
  def create
    @stud_edu = StudEdu.new(params[:stud_edu])

    respond_to do |format|
      if @stud_edu.save
        format.html { redirect_to @stud_edu, notice: 'Stud edu was successfully created.' }
        format.json { render json: @stud_edu, status: :created, location: @stud_edu }
      else
        format.html { render action: "new" }
        format.json { render json: @stud_edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stud_edus/1
  # PUT /stud_edus/1.json
  def update
    @stud_edu = StudEdu.find(params[:id])

    respond_to do |format|
      if @stud_edu.update_attributes(params[:stud_edu])
        format.html { redirect_to @stud_edu.user, notice: 'Stud edu was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stud_edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_edus/1
  # DELETE /stud_edus/1.json
  def destroy
    @stud_edu = StudEdu.find(params[:id])
    @stud_edu.destroy

    respond_to do |format|
      format.html { redirect_to stud_edus_url }
      format.json { head :ok }
    end
  end
end
