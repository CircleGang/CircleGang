class CirclesController < ApplicationController
  def new
  end
  def index
  	@circles = Circle.all
  end
  def create
  	@circle = Circle.new
  	@circle.title = params[:title]
  	@circle.body = params[:body]
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
  	@circle = Post.find(params[:id])
    @circle.title = params[:title]
    @circle.body = params[:body]
    @circle.save
    redirect_to circle_path(@circle.id)
  end
  end
  # def destroy
  # end
end
