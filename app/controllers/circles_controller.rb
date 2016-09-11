class CirclesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def new

  end
  def index
  	@circles = Circle.all
  end
  def create
  	@circle = Circle.new
  	@circle.title = params[:title]
  	@circle.body = params[:body]
  	    if user = User.authenticate(params[:username], params[:password])
      session[:user_id] = user.id
        end
      @circle.save
  	redirect_to circle_path(@circle.id)
  end
  def show
  	# @circle = Circle.find(params[:id])
  end
  def edit
  	@circle = Circle.find(params[:id])
  end
  def update
  	@circle = Post.find(params[:id])
    @circle.title = params[:title]
    @circle.body = params[:body]
    @circle.save
    redirect_to circle_path(@circle.id)
  end
  
  # def destroy
  # end

   private
    def current_user
      @_current_user ||= User.find_by(id: session[:user_id])
    end

end
