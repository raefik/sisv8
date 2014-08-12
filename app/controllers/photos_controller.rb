class PhotosController < ApplicationController
  # GET /durations
  # GET /durations.json
  
  def upload_save
    val = params[:pictureUp]
    bi = Photo.find(params[:id])
    bi.image = val
    bi.user_id = params[:idd]
    bi.save

    render json: bi
  end
  
  
  def index
    @photos = Photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /durations/1
  # GET /durations/1.json
  def show
    @photos = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /durations/new
  # GET /durations/new.json
  def new
    @photos = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /durations/1/edit
  def edit
    @photos = Photo.find(params[:id])
  end

  # POST /durations
  # POST /durations.json
  def create
    @photos = Photo.new(params[:photo])
	
    respond_to do |format|
      if @photos.save
        format.html { redirect_to  "/users/"+current_user.id.to_s, notice: 'Photo was successfully created.' }
        format.json { render json: @photos, status: :created, location: @photos }
      else
        format.html { render action: "new" }
        format.json { render json: @photos.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /durations/1
  # PUT /durations/1.json
  def update
    @photos = Photo.find(params[:id])

    respond_to do |format|
      if @photos.update_attributes(params[:photo])
        format.html { redirect_to "/users/"+current_user.id.to_s, notice: 'Photo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @photos.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /durations/1
  # DELETE /durations/1.json
  def destroy
    @photos = Photo.find(params[:id])
    @photos.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :ok }
    end
  end
end
