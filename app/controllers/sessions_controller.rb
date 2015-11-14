class SessionsController < ApplicationController
  def new
  @title="Sign in"
  end



  def studentnew
  @title="Sign in"
	@user=User.new
	return false
  end

  def create

  user=User.authenticate(params[:session][:name],
							params[:session][:password])
				if user.nil?
				flash.now[:error]="Invalid username/password combination"
				@title="sign in"
				render 'new'
				else
				#sign the user and redirect to the user's show page
				sign_in user
				redirect_back_or user
				flash[:success]="User  #{current_user.name}  logged in!"
				end

  end

  def destroy
  sign_out
  redirect_to root_url, :notice => "Logged out!"
  end

end
