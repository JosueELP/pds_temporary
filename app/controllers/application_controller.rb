class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :last_name, :phone, :gender ,:email, :password, :role_id, :address_id, :branch_office_id, :city_id)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :last_name, :phone, :gender, :email, :password, :current_password, :role_id, :address_id, :branch_office_id, :city_id)}
    end
end
