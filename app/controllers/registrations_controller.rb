class RegistrationsController < Devise::RegistrationsController

  protected
    def after_sign_up_path_for(resource)
      # puts 'after_sign_up_path_for this was run'
      '/profiles/new'
    end

end
