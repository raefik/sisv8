class SessionsController < ApplicationController
  def new
  @title="Sign in"
  end

  def create
 
  user=User.authenticate(params[:session][:email],
							params[:session][:password])
				if user.nil?
				flash.now[:error]="Invalid email/password combination"
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
  redirect_to signin_path
  end

end
