class SessionController < ApplicationController

	def new
	end

	def create
		@user = User.find_by_name(params[:name])
		if @user and @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to @user
		else
			render :new
		end
		
	end

	def destroy
		session[:user] = nil 
		redirect_to :action => "create"
	end

end
