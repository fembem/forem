module Forem

  class ApplicationController < ::ApplicationController

    before_filter :set_user_from_session
    before_filter :method_in_main_app

    private

    def set_user_from_session
      if session['user']
        ApplicationController.class_eval <<-STRING
          def current_user
            User.find_or_create_by_login("forem_user")
          end

          helper_method :current_user
        STRING
      end
    end

    def authenticate_forem_user!
      if !current_user
        flash[:notice] = "You must be authenticated before you can do that."
        redirect_to main_app.sign_in_url
      end
    end

  end
end

