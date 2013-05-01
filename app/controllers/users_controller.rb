class UsersController < ApplicationController
	def index
		@users = User.all()
	end

	def edit
		@user_id = params["id"]
		@user = User.find(@user_id)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
		if @user.valid?
			redirect_to @user
		else
			render :new
		end
	end

	def update
	end

	def show
		@user = User.find(params[:id])
	end
end
