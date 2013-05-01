class SessionController < ApplicationController

	def new
	end

	def create
		@user = User.find_by_name!(params[:name])
		if @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to @user
		end
		render :new
	end

	def destroy
		session[:user] = nil 
	end

end
