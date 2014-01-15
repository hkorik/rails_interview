class SessionsController < ApplicationController
  def new
  	
  end
  #Admin Name is Hershy
  def create
  	user = User.find_by_name(params[:session][:name])
  	if params[:session][:name].blank?
  		flash[:error_message] = 'Field can\'t be blank'
  		redirect_to signin_path
  	else 
  		if user.nil? || user.user_level != 1
  			flash[:error_message] = 'You are not an admin'
  			redirect_to signin_path
  		else
	  		sign_in user
	  		redirect_to '/new_book'
  		end
  	end
  end

  def destroy
  	sign_out
  	redirect_to '/'
  end
end
