class EmployerTraitsController < ApplicationController
  # GET /employer_traits
  # GET /employer_traits.json
  def index
    @employer_traits = EmployerTrait.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employer_traits }
    end
  end

  # GET /employer_traits/1
  # GET /employer_traits/1.json
  def show
    @employer_trait = EmployerTrait.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employer_trait }
    end
  end

  # GET /employer_traits/new
  # GET /employer_traits/new.json
  def new
    @employer_trait = EmployerTrait.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employer_trait }
    end
  end

  # GET /employer_traits/1/edit
  def edit
    @employer_trait = EmployerTrait.find(params[:id])
  end

  # POST /employer_traits
  # POST /employer_traits.json
  def create
    @employer_trait = EmployerTrait.new(params[:employer_trait])

    respond_to do |format|
      if @employer_trait.save
        format.html { redirect_to @employer_trait, notice: 'Employer trait was successfully created.' }
        format.json { render json: @employer_trait, status: :created, location: @employer_trait }
      else
        format.html { render action: "new" }
        format.json { render json: @employer_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employer_traits/1
  # PUT /employer_traits/1.json
  def update
    @employer_trait = EmployerTrait.find(params[:id])

    respond_to do |format|
      if @employer_trait.update_attributes(params[:employer_trait])
        format.html { redirect_to @employer_trait, notice: 'Employer trait was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @employer_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employer_traits/1
  # DELETE /employer_traits/1.json
  def destroy
    @employer_trait = EmployerTrait.find(params[:id])
    @employer_trait.destroy

    respond_to do |format|
      format.html { redirect_to employer_traits_url }
      format.json { head :ok }
    end
  end
end
