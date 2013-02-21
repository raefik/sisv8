class StuEdusController < ApplicationController
  # GET /stu_edus
  # GET /stu_edus.json
  def index
    @stu_edus = StuEdu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stu_edus }
    end
  end

  # GET /stu_edus/1
  # GET /stu_edus/1.json
  def show
    @stu_edu = StuEdu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stu_edu }
    end
  end

  # GET /stu_edus/new
  # GET /stu_edus/new.json
  def new
    @stu_edu = StuEdu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stu_edu }
    end
  end

  # GET /stu_edus/1/edit
  def edit
    @stu_edu = StuEdu.find(params[:id])
  end

  # POST /stu_edus
  # POST /stu_edus.json
  def create
    @stu_edu = StuEdu.new(params[:stu_edu])

    respond_to do |format|
      if @stu_edu.save
        format.html { redirect_to @stu_edu, notice: 'Stu edu was successfully created.' }
        format.json { render json: @stu_edu, status: :created, location: @stu_edu }
      else
        format.html { render action: "new" }
        format.json { render json: @stu_edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stu_edus/1
  # PUT /stu_edus/1.json
  def update
    @stu_edu = StuEdu.find(params[:id])

    respond_to do |format|
      if @stu_edu.update_attributes(params[:stu_edu])
        format.html { redirect_to @stu_edu, notice: 'Stu edu was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stu_edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stu_edus/1
  # DELETE /stu_edus/1.json
  def destroy
    @stu_edu = StuEdu.find(params[:id])
    @stu_edu.destroy

    respond_to do |format|
      format.html { redirect_to stu_edus_url }
      format.json { head :ok }
    end
  end
end
