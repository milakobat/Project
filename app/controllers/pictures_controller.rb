class PicturesController < ApplicationController
	
	def index
		#user_id = params["user_id"]
		#@user = User.find(user_id)
		@pictures = @user.pictures.all()
	end

	def new
		ensure_logged_in
		@picture = @user.pictures.new()
	end

	def create
		#current_user = User.find(params["user_id"])
		@user.pictures.create params[:picture].slice(:title)
		redirect_to :action => "index"
	end

	 def ensure_logged_in
	 	if @user.nil?
	 		raise "Not logged in"
	 	end
	 end


end
