class UsersProfController < ApplicationController
	# before_action :set_user_prof, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

    def new
    	@user_prof = UserProf.new
    end

    def create
		@user_prof = UserProf.new(name: "山田　太郎", univ: "○ ○ 大学", age: 20, gender: 1, bio: "紹介文を入力してください。")
		# @user_prof.name = "山田　太郎"
		# @user_prof.univ = "○ ○ 大学"
		# @user_prof.age = 20
		# @user_prof.gender = 1
		# @user_prof.bio = "紹介文を入力してください。"
		# @user_prof.birth = 2011, 12, 24
		@user_prof.id = current_user.id
		@user_prof.save
		redirect_to "/users_prof/#{@user_prof.id}"
	end

    def show
    	@circle = Circle.new
    	@user_prof = UserProf.find(params[:id])
    end



	def edit
	    # @user_prof = UserProf.find(params[:id])  
	    	
	end
	
	def update
		@user_prof = UserProf.new(user_prof_params)
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

	  # def current_user
   #     User.find_by(id: session[:id])
   #    end

	def user_prof_params
		params.require(:user_prof).permit(:name, :univ, :age, :gender, :bio, :birth )
	end
end
