class CirclesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :edit]
  def new
    @circle =  Circle.new
    @user_prof = UserProf.find(params[:id])
  end
  def index
  	@circles = Circle.all
    @user_prof = UserProf.find(params[:id])
  end
  def create
    @user_prof = UserProf.find(params[:id])
    @circle =  Circle.new(circle_params)
        # if user = User.authenticate(params[:username], params[:password])
       @circle.id = session[:user_id]
        # end
        @circle.save
  	redirect_to circle_path(@circle.id)
    
  end
  def show
  	@circle = Circle.find(params[:id])
    @user_prof = UserProf.find(params[:id])
  end
  def edit
  	@circle = Circle.find(params[:id])
    @user_prof = UserProf.find(params[:id])
  end
  def update
    @user_prof = UserProf.find(params[:id])
  	@circle.update(circle_params)
# =======
#   	@circle = Circle.find(params[:id])
#     @circle.title = params[:title]
#     @circle.body = params[:body]
#     @circle.save
# >>>>>>> dev
    redirect_to circle_path(@circle.id)
      #   respond_to do |format|
      # if @circle.update(circle_params)
      #   format.html { redirect_to @circle, notice: '記事を変更しました。' }
      #   format.json { render :show, status: :ok, location: @circle }
      # else
      #   format.html { render :edit }
      #   format.json { render json: @circle.errors, status: :unprocessable_entity }
      # end
    # end
  end
  
  # def destroy
  # end

   private

    def current_user
      @current_user = User.find_by(id: session[:user_id])
    end

    def circle_params
       params.require(:circle).permit(:name, :place, :bio, :admin_user_id )
    end

end
