class PicturesController < ApplicationController
	
	def index
		user_id = params["user_id"]
		@user = User.find(user_id)
		@pictures = @user.pictures.all()
	end

	def new
		ensure_logged_in
		@picture = current_user.pictures.new()
	end

	def create
		current_user = User.find(params["user_id"])
		current_user.pictures.create params[:picture].slice(:text)
	end

	 def ensure_logged_in
	 	if current_user.nil?
	 		raise "Not logged in"
	 	end
	 end


end
