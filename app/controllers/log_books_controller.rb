class LogBooksController < ApplicationController
  # GET /log_books
  # GET /log_books.json
  
  def get_logbook
  end  
  
  def log_svc
	@log_books = LogBook.order( 'created_at DESC' )
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @log_books }
    end
  end
  
  def log_sva
  	studentid = StudProfile.find_all_by_staff_id(Staff.find_by_user_id(current_user.id).id).each.map do |x| 
  		x.user_id
  	end
	@log_books = LogBook.find_all_by_user_id(studentid)
	#raise studentid.to_yaml 
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @log_books }
    end
  end
  
  def logstudent
	@log_books = LogBook.where(:user_id=> current_user.id)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @log_books }
    end
  end
  

  
  def index
	user=StudProfile.find_by_user_id(current_user.id)
    #@log_books = LogBook.find(:all,:conditions=>["stud_profile_id=?",user.id])
	@log_books = LogBook.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @log_books }
    end
  end

  # GET /log_books/1
  # GET /log_books/1.json
  def show
    @log_book = LogBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @log_book }
    end
  end

  # GET /log_books/new
  # GET /log_books/new.json
  def new
    @log_book = LogBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @log_book }
    end
  end

  # GET /log_books/1/edit
  def edit
    @log_book = LogBook.find(params[:id])
  end

  # POST /log_books
  # POST /log_books.json
  def create
    @user=StudProfile.find_by_user_id(current_user.id)
    @log_book = @user.log_books.new(params[:log_book])

    respond_to do |format|
      if @log_book.save
		     case current_user.role_id
          when 1
            format.html { redirect_to "/logstudent" }
          when 2
            format.html { redirect_to "/log_svc" }
          when 3
            format.html { redirect_to "/log_sva" }
          end 
      else
        format.html { render action: "new" }
        format.json { render json: @log_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /log_books/1
  # PUT /log_books/1.json
  def update
    @log_book = LogBook.find(params[:id])

    respond_to do |format|
      if @log_book.update_attributes(params[:log_book])
       case current_user.role_id
      when 1
        format.html { redirect_to "/logstudent" }
      when 2
        format.html { redirect_to "/log_svc" }
      when 3
        format.html { redirect_to "/log_sva" }
      end    
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @log_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_books/1
  # DELETE /log_books/1.json
  def destroy
    @log_book = LogBook.find(params[:id])
    @log_book.destroy

    respond_to do |format|
      case current_user.role_id
      when 1
        format.html { redirect_to "/logstudent" }
      when 2
        format.html { redirect_to "/log_svc" }
      when 3
        format.html { redirect_to "/log_sva" }
      end    
      format.json { head :ok }
    end
  end
  
  def erase
  	id = params[:id]
  	lb = LogBook.find(id)
	  	if lb.delete
		  	respond_to do |format|
		      case current_user.role_id
		      when 1
		        format.html { redirect_to "/logstudent" }
		      when 2
		        format.html { redirect_to "/log_svc" }
		      when 3
		        format.html { redirect_to "/log_sva" }
		      end    
		      format.json { head :ok }
		    end
		end    
  end
end
