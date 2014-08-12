class DurationsController < ApplicationController
  # GET /durations
  # GET /durations.json
  def index
    @durations = Duration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @durations }
    end
  end

  # GET /durations/1
  # GET /durations/1.json
  def show
    @duration = Duration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duration }
    end
  end

  # GET /durations/new
  # GET /durations/new.json
  def new
    @duration = Duration./home/laptop/Desktop/sis_v7/public/images/avartar2.png46y7 bnew
`21Q      else
        format.html { render action: "new" }
        format.json { render json: @duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /durations/1
  # PUT /durations/1.json
  def update
    @duration = Duration.find(params[:id])

    respond_to do |format|
      if @duration.update_attributes(params[:duration])
        format.html { redirect_to @duration, notice: 'Duration was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /durations/1
  # DELETE /durations/1.json
  def destroy
    @duration = Duration.find(params[:id])
    @duration.destroy

    respond_to do |format|
      format.html { redirect_to durations_url }
      format.json { head :ok }
    end
  end
end
