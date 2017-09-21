class ApplicationController < ActionController::API

  #include ::ActionController::Cookies
	include Knock::Authenticable
	include ActionController::Helpers
   include ActionController::Flash
	undef_method :current_user
	#protect_from_forgery with: :exception
	before_filter :configure_permitted_parameters, if: :devise_controller?
	protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up,keys: [:first_name, :last_name, :email, :password, :password_confirmation]);
            devise_parameter_sanitizer.permit(:account_update,keys: [:first_name, :last_name, :email, :password, :current_password]);
        end
end
