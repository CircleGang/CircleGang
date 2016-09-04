class UsersProfController < ApplicationController
	before_action :authenticate_user!

    def user_prof
    	
    end

	def create
		@user_prof = User_prof.new
		user_id = current.user_id
		@user_prof.save
	end

	def edit
		# if 
		# else
		# end
	end
	
	def update
		
	end
	
	def destroy
		
	
	end
end
