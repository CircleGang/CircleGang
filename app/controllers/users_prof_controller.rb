class UsersProfController < ApplicationController
	# before_action :set_user_prof, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

    def new
    	@user_prof = UserProf.new
    end

    def show
    	# @circle = Circle.new
    end

	def create
		@user_prof = User_prof.new(user_prof_params)
		user_id = current.user_id
		@user_prof.save
	end

	def edit		
	end
	
	def update
		@user_prof = User_prof.new(user_prof_params)
		@user_prof.save
	end
	
	def destroy
		@user_prof.destroy
		redirect_to '/crcle/index'
	
	end

	private
 #    def set_user_prof
	# 	@user_prof = User_prof.find(params[:id])
	# end

	def user_prof_params
		params.require(:user_prof).permit(:name, :univ, :age, :gender, :bio, :birth, :user_id)
		
	end
end
