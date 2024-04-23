class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 新規登録時にnameを許可
    devise_parameter_sanitizer.permit(:account_update, keys: [:name]) # アカウント更新時にnameを許可
  end
end