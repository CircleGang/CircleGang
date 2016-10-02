class HomeController < ApplicationController
  def top
  	@circles = Circle.order("RANDOM()").limit(3)
  end
end
