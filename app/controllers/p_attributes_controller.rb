class PAttributesController < ApplicationController
  # GET /p_attributes
  # GET /p_attributes.json
  def index
    @p_attributes = PAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @p_attributes }
    end
  end

  # GET /p_attributes/1
  # GET /p_attributes/1.json
  def show
    @p_attribute = PAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @p_attribute }
    end
  end

  # GET /p_attributes/new
  # GET /p_attributes/new.json
  def new
    @p_attribute = PAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @p_attribute }
    end
  end

  # GET /p_attributes/1/edit
  def edit
    @p_attribute = PAttribute.find(params[:id])
  end

  # POST /p_attributes
  # POST /p_attributes.json
  def create
    @p_attribute = PAttribute.new(params[:p_attribute])

    respond_to do |format|
      if @p_attribute.save
        format.html { redirect_to @p_attribute, notice: 'P attribute was successfully created.' }
        format.json { render json: @p_attribute, status: :created, location: @p_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @p_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /p_attributes/1
  # PUT /p_attributes/1.json
  def update
    @p_attribute = PAttribute.find(params[:id])

    respond_to do |format|
      if @p_attribute.update_attributes(params[:p_attribute])
        format.html { redirect_to @p_attribute, notice: 'P attribute was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @p_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_attributes/1
  # DELETE /p_attributes/1.json
  def destroy
    @p_attribute = PAttribute.find(params[:id])
    @p_attribute.destroy

    respond_to do |format|
      format.html { redirect_to p_attributes_url }
      format.json { head :ok }
    end
  end
end
