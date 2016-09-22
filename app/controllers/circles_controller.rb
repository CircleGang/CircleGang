class CirclesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :edit]
  def new
    @circle =  Circle.new
  end
  def index
  	@circles = Circle.all
  end
  def create
    @circle =  Circle.new(circle_params)
        # if user = User.authenticate(params[:username], params[:password])
      session[:user_id] = @circle.id
        # end
        @circle.save
  	redirect_to circle_path(@circle.id)
    
  end
  def show
  	@circle = Circle.find(params[:id])
  end
  def edit
  	@circle = Circle.find(params[:id])
  end
  def update
  	@circle.update(circle_params)
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
      @_current_user ||= User.find_by(id: session[:user_id])
    end

    def circle_params
       params.require(:circle).permit(:name, :place, :bio, :admin_user_id )
    end

end
