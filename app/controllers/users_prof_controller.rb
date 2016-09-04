class UsersProfController < ApplicationController
	before_action :authenticate_user!

    def user_prof
    	@user_prof = User_prof.new
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
		
	
	end

	private
	def user_prof_params
		params.require(:user_prof).permit(:name, :univ, :age, :gender, :bio, :birth, :user_id)
		
	end
end
