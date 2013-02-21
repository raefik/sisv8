class CodeProgramsController < ApplicationController
  # GET /code_programs
  # GET /code_programs.json
  def index
    @code_programs = CodeProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @code_programs }
    end
  end

  # GET /code_programs/1
  # GET /code_programs/1.json
  def show
    @code_program = CodeProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @code_program }
    end
  end

  # GET /code_programs/new
  # GET /code_programs/new.json
  def new
    @code_program = CodeProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @code_program }
    end
  end

  # GET /code_programs/1/edit
  def edit
    @code_program = CodeProgram.find(params[:id])
  end

  # POST /code_programs
  # POST /code_programs.json
  def create
    @code_program = CodeProgram.new(params[:code_program])

    respond_to do |format|
      if @code_program.save
        format.html { redirect_to @code_program, notice: 'Code program was successfully created.' }
        format.json { render json: @code_program, status: :created, location: @code_program }
      else
        format.html { render action: "new" }
        format.json { render json: @code_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /code_programs/1
  # PUT /code_programs/1.json
  def update
    @code_program = CodeProgram.find(params[:id])

    respond_to do |format|
      if @code_program.update_attributes(params[:code_program])
        format.html { redirect_to @code_program, notice: 'Code program was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @code_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_programs/1
  # DELETE /code_programs/1.json
  def destroy
    @code_program = CodeProgram.find(params[:id])
    @code_program.destroy

    respond_to do |format|
      format.html { redirect_to code_programs_url }
      format.json { head :ok }
    end
  end
end
