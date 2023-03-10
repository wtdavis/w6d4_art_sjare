class UsersController < ApplicationController
    #let's go!
    def index
        render json: User.all
    end

	def create
		@user = User.new(user_params)
		if @user.save
			render json: @user
		else 
			render json: @user.errors.full_messages, status: :unprocessable_entity
		end
	end

	def user_params
		params.require(:user).permit(:name)
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def update
		@user = User.find(params[:id])
		#if params[:user][:name]
		#	@user[:name] = params[:user][:name]
		#end
		#if params[:user][:email] 
		#	@user[:email] = params[:user][:email]
		#end
		params[:user].each do |key, value| 
			@user[key] = value
		end
		@user.save
		render json: @user
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			render json: "Hulk Smash"
		else
			@user.errors.full_messages 
		end
	end

	##must check for unique title/author_id combo

	
end