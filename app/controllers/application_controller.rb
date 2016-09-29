class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 #  def after_sign_in_path_for(resource)
	# "/users_prof/#{@user_prof.id}"
 #  end

  def after_sign_up_path_for(resource)
    new_users_prof_path
  end
  

    def current_user
      @current_user ||= "/new"
    end

end
