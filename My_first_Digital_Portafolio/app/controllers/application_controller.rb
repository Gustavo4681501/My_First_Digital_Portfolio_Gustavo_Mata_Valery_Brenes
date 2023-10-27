class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        attributes = [:name, :description]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)

    end
    layout :set_layout

    private

    def set_layout

        if current_user&.admin?
            "admin"
        else
            "application"
        end
    end
end
