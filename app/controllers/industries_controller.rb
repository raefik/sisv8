class IndustriesController < ApplicationController
  # GET /industries
  # GET /industries.json
  def index
    @industries = Industry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @industries }
    end
  end

  def report
    @total = EvalByIndustrySv.count
    @p1 = ((@total / EvalByIndustrySv.sum(:p1))*100 ).round
    @p2 = ((@total / EvalByIndustrySv.sum(:p2))*100 ).round
    @p3 = ((@total / EvalByIndustrySv.sum(:p3))*100 ).round
    @p4 = ((@total / EvalByIndustrySv.sum(:p4))*100 ).round
    @p5 = ((@total / EvalByIndustrySv.sum(:p5))*100 ).round
    
    @a1 = ((@total / EvalByIndustrySv.sum(:a1))*100 ).round
    @a2 = ((@total / EvalByIndustrySv.sum(:a2))*100 ).round
    @a3 = ((@total / EvalByIndustrySv.sum(:a3))*100 ).round
    @a4 = ((@total / EvalByIndustrySv.sum(:a4))*100 ).round
    @a5 = ((@total / EvalByIndustrySv.sum(:a5))*100 ).round
    @a6 = ((@total / EvalByIndustrySv.sum(:a6))*100 ).round
    @a7 = ((@total / EvalByIndustrySv.sum(:a7))*100 ).round
    @a8 = ((@total / EvalByIndustrySv.sum(:a8))*100 ).round
    @a9 = ((@total / EvalByIndustrySv.sum(:a9))*100 ).round
    @a10 = ((@total / EvalByIndustrySv.sum(:a10))*100 ).round
    @a11 = ((@total / EvalByIndustrySv.sum(:a11))*100 ).round
    @a12 = ((@total / EvalByIndustrySv.sum(:a12))*100 ).round
    @a13 = ((@total / EvalByIndustrySv.sum(:a13))*100 ).round
    @a14 = ((@total / EvalByIndustrySv.sum(:a14))*100 ).round
    @a15 = ((@total / EvalByIndustrySv.sum(:a15))*100 ).round
    @a16 = ((@total / EvalByIndustrySv.sum(:a16))*100 ).round
    @a17 = ((@total / EvalByIndustrySv.sum(:a17))*100 ).round
    @a18 = ((@total / EvalByIndustrySv.sum(:a18))*100 ).round

    @total2 = EvalByAkademicSv.count
    @pp1 = ((@total / EvalByAkademicSv.sum(:p1))*100 ).round
    @pp2 = ((@total / EvalByAkademicSv.sum(:p2))*100 ).round
    @pp3 = ((@total / EvalByAkademicSv.sum(:p3))*100 ).round
    @pp4 = ((@total / EvalByAkademicSv.sum(:p4))*100 ).round
    @pp5 = ((@total / EvalByAkademicSv.sum(:p5))*100 ).round

    @aa1 = ((@total / EvalByAkademicSv.sum(:a1))*100 ).round
    @aa2 = ((@total / EvalByAkademicSv.sum(:a2))*100 ).round
    @aa3 = ((@total / EvalByAkademicSv.sum(:a3))*100 ).round
    @aa4 = ((@total / EvalByAkademicSv.sum(:a4))*100 ).round
    @aa5 = ((@total / EvalByAkademicSv.sum(:a5))*100 ).round
    @aa6 = ((@total / EvalByAkademicSv.sum(:a6))*100 ).round
    @aa7 = ((@total / EvalByAkademicSv.sum(:a7))*100 ).round
    @aa8 = ((@total / EvalByAkademicSv.sum(:a8))*100 ).round
    @aa9 = ((@total / EvalByAkademicSv.sum(:a9))*100 ).round
    @aa11 = ((@total / EvalByAkademicSv.sum(:a11))*100 ).round

    @l1 = ((@total / EvalByAkademicSv.sum(:l1))*100 ).round
    @l2 = ((@total / EvalByAkademicSv.sum(:l2))*100 ).round

    @r1 = ((@total / EvalByAkademicSv.sum(:r1))*100 ).round
    @r2 = ((@total / EvalByAkademicSv.sum(:r2))*100 ).round
    @r3 = ((@total / EvalByAkademicSv.sum(:r3))*100 ).round
    @r4 = ((@total / EvalByAkademicSv.sum(:r4))*100 ).round

    @totalstud = Student.all.count
    @totalstudintern = UserCompany.where(:total => '1' ).count
    @totInactive = UserCompany.all.count
    @company = Company.all.count
    @coordinator = Staff.where(:staff_type_id => '1' ).count
    @acasupervisor = Staff.where(:staff_type_id => '3' ).count
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => { :total=>@total,
                                      :p1=>@p1,
                                      :p2=>@p2,
                                      :p3=>@p3,
                                      :p4=>@p4,
                                      :p5=>@p5,
                                      
                                      :a1=>@a1,
                                      :a2=>@a2,
                                      :a3=>@a3,
                                      :a4=>@a4,
                                      :a5=>@a5,
                                      :a6=>@a6,
                                      :a7=>@a7,
                                      :a8=>@a8,
                                      :a9=>@a9,
                                      :a10=>@a10,
                                      :a11=>@a11,
                                      :a12=>@a12,

                                      :total=>@total2,
                                      :pp1=>@pp1,
                                      :pp2=>@pp2,
                                      :pp3=>@pp3,
                                      :pp4=>@pp4,
                                      :pp5=>@pp5,
                                      
                                      :aa1=>@aa1,
                                      :aa2=>@aa2,
                                      :aa3=>@aa3,
                                      :aa4=>@aa4,
                                      :aa5=>@aa5,
                                      :aa6=>@aa6,
                                      :aa7=>@aa7,
                                      :aa8=>@aa8,
                                      :aa9=>@aa9,
                                      :aa11=>@aa11,

                                      :l1=>@l1,
                                      :l2=>@l2,

                                      :r1=>@r1,
                                      :r2=>@r2,
                                      :r3=>@r3,
                                      :r4=>@r4,

                                      :totalstud => @totalstud,
                                      :totalstudintern =>@totalstudintern,
                                      :totInactive => @totInactive,
                                      :company => @company,
                                      :coordinator =>@coordinator,
                                      :acasupervisor=>@acasupervisor

                                    }
                                  }

    end
  end
  
  def report_eval_industry
  	@total = EvalByIndustrySv.count
    @p1 = ((@total / EvalByIndustrySv.sum(:p1))*100 ).round
    @p2 = ((@total / EvalByIndustrySv.sum(:p2))*100 ).round
    @p3 = ((@total / EvalByIndustrySv.sum(:p3))*100 ).round
    @p4 = ((@total / EvalByIndustrySv.sum(:p4))*100 ).round
    @p5 = ((@total / EvalByIndustrySv.sum(:p5))*100 ).round
    
    @a1 = ((@total / EvalByIndustrySv.sum(:a1))*100 ).round
    @a2 = ((@total / EvalByIndustrySv.sum(:a2))*100 ).round
    @a3 = ((@total / EvalByIndustrySv.sum(:a3))*100 ).round
    @a4 = ((@total / EvalByIndustrySv.sum(:a4))*100 ).round
    @a5 = ((@total / EvalByIndustrySv.sum(:a5))*100 ).round
    @a6 = ((@total / EvalByIndustrySv.sum(:a6))*100 ).round
    @a7 = ((@total / EvalByIndustrySv.sum(:a7))*100 ).round
    @a8 = ((@total / EvalByIndustrySv.sum(:a8))*100 ).round
    @a9 = ((@total / EvalByIndustrySv.sum(:a9))*100 ).round
    @a10 = ((@total / EvalByIndustrySv.sum(:a10))*100 ).round
    @a11 = ((@total / EvalByIndustrySv.sum(:a11))*100 ).round
    @a12 = ((@total / EvalByIndustrySv.sum(:a12))*100 ).round
    @a13 = ((@total / EvalByIndustrySv.sum(:a13))*100 ).round
    @a14 = ((@total / EvalByIndustrySv.sum(:a14))*100 ).round
    @a15 = ((@total / EvalByIndustrySv.sum(:a15))*100 ).round
    @a16 = ((@total / EvalByIndustrySv.sum(:a16))*100 ).round
    @a17 = ((@total / EvalByIndustrySv.sum(:a17))*100 ).round
    @a18 = ((@total / EvalByIndustrySv.sum(:a18))*100 ).round

	respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => { :total=>@total,
                                      :p1=>@p1,
                                      :p2=>@p2,
                                      :p3=>@p3,
                                      :p4=>@p4,
                                      :p5=>@p5,
                                      
                                      :a1=>@a1,
                                      :a2=>@a2,
                                      :a3=>@a3,
                                      :a4=>@a4,
                                      :a5=>@a5,
                                      :a6=>@a6,
                                      :a7=>@a7,
                                      :a8=>@a8,
                                      :a9=>@a9,
                                      :a10=>@a10,
                                      :a11=>@a11,
                                      :a12=>@a12,
                                      :a10=>@a13,
                                      :a11=>@a14,
                                      :a12=>@a15,
                                      :a10=>@a16,
                                      :a11=>@a17,
                                      :a12=>@a18,
                                    }
                                  }
    end
  end
  
  
  def report_eval_academic
  	@total = EvalByAkademicSv.count
    @pp1 = ((@total / EvalByAkademicSv.sum(:p1))*100 ).round
    @pp2 = ((@total / EvalByAkademicSv.sum(:p2))*100 ).round
    @pp3 = ((@total / EvalByAkademicSv.sum(:p3))*100 ).round
    @pp4 = ((@total / EvalByAkademicSv.sum(:p4))*100 ).round
    @pp5 = ((@total / EvalByAkademicSv.sum(:p5))*100 ).round

    @aa1 = ((@total / EvalByAkademicSv.sum(:a1))*100 ).round
    @aa2 = ((@total / EvalByAkademicSv.sum(:a2))*100 ).round
    @aa3 = ((@total / EvalByAkademicSv.sum(:a3))*100 ).round
    @aa4 = ((@total / EvalByAkademicSv.sum(:a4))*100 ).round
    @aa5 = ((@total / EvalByAkademicSv.sum(:a5))*100 ).round
    @aa6 = ((@total / EvalByAkademicSv.sum(:a6))*100 ).round
    @aa7 = ((@total / EvalByAkademicSv.sum(:a7))*100 ).round
    @aa8 = ((@total / EvalByAkademicSv.sum(:a8))*100 ).round
    @aa9 = ((@total / EvalByAkademicSv.sum(:a9))*100 ).round
    @aa11 = ((@total / EvalByAkademicSv.sum(:a11))*100 ).round

    @l1 = ((@total / EvalByAkademicSv.sum(:l1))*100 ).round
    @l2 = ((@total / EvalByAkademicSv.sum(:l2))*100 ).round

    @r1 = ((@total / EvalByAkademicSv.sum(:r1))*100 ).round
    @r2 = ((@total / EvalByAkademicSv.sum(:r2))*100 ).round
    @r3 = ((@total / EvalByAkademicSv.sum(:r3))*100 ).round
    @r4 = ((@total / EvalByAkademicSv.sum(:r4))*100 ).round
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => { 

                                      :total=>@total,
                                      :pp1=>@pp1,
                                      :pp2=>@pp2,
                                      :pp3=>@pp3,
                                      :pp4=>@pp4,
                                      :pp5=>@pp5,
                                      
                                      :aa1=>@aa1,
                                      :aa2=>@aa2,
                                      :aa3=>@aa3,
                                      :aa4=>@aa4,
                                      :aa5=>@aa5,
                                      :aa6=>@aa6,
                                      :aa7=>@aa7,
                                      :aa8=>@aa8,
                                      :aa9=>@aa9,
                                      :aa11=>@aa11,

                                      :l1=>@l1,
                                      :l2=>@l2,

                                      :r1=>@r1,
                                      :r2=>@r2,
                                      :r3=>@r3,
                                      :r4=>@r4,

                                    }
                                  }
	end
  end

  # GET /industries/1
  # GET /industries/1.json
  def show
    @industry = Industry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @industry }
    end
  end

  # GET /industries/new
  # GET /industries/new.json
  def new
    @industry = Industry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @industry }
    end
  end

  # GET /industries/1/edit
  def edit
    @industry = Industry.find(params[:id])
  end

  # POST /industries
  # POST /industries.json
  def create
    @industry = Industry.new(params[:industry])

    respond_to do |format|
      if @industry.save
        format.html { redirect_to industries_url, notice: 'Industry was successfully created.' }
        format.json { render json: @industry, status: :created, location: @industry }
      else
        format.html { render action: "new" }
        format.json { render json: @industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /industries/1
  # PUT /industries/1.json
  def update
    @industry = Industry.find(params[:id])

    respond_to do |format|
      if @industry.update_attributes(params[:industry])
        format.html { redirect_to industries_url, notice: 'Industry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industries/1
  # DELETE /industries/1.json
  def destroy
    @industry = Industry.find(params[:id])
    @industry.destroy

    respond_to do |format|
      format.html { redirect_to industries_url }
      format.json { head :ok }
    end
  end
  
  def erase
  	id = params[:id]
  	lb = Industry.find(id)
	  	if lb.delete
		  	respond_to do |format|
		      format.html { redirect_to industries_url }
		      format.json { head :ok }
		    end
		end    
  end
end
