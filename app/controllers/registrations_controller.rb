class RegistrationsController < Devise::RegistrationsController

  protected

    def after_inactive_sign_up_path_for(resource)
      new_users_prof_path
    end

end