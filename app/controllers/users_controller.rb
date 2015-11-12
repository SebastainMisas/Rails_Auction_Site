class UsersController < ApplicationController
	def index 
		
		@users_list = User.order(created_at: :desc)
		render "index"
	end

	def new
		@users = User.new
		render "new"
		
	end

	def create
		users = User.new(user_params)
		if users.save
			redirect_to "/users"
		else
			redirect_to "/users/new"
		end
	end

	def show
		id = params[:id]
		@users = User.find_by(id: id)

		render "show"
	end

	private
	def user_params
		params.require(:user).permit(:name,:email)
	end
end
