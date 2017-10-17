class ApplicationController < ActionController::Base
  include Pundit
  layout :responsive_layout
  # Rails 5 中，在 protect_from_forgery 前设置 authenticate_user 会导致 "Can't verify CSRF token authenticity."
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  after_action :verify_authorized
  # 捕获 忘记调用 authorize 方法时抛出的异常，开发界面友好
  rescue_from Pundit::AuthorizationNotPerformedError, with: :forget_invoke_authorize
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def responsive_layout
    if current_user
      'part'
    else
      'full'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :category)
    end
    devise_parameter_sanitizer.permit(:sign_in) do |u|
      u.permit(:email, :password, :remember_me)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :current_password)
    end
  end

  private

  def forget_invoke_authorize(exception)
    # do something ...
    # flash[:error] = "#{exception}.#{action_name}"
    # redirect_to(request.referrer || root_path)
  end

  def user_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore
    flash[:error] = t "#{policy_name}.#{exception.query}", scope: 'pundit', default: :default
    redirect_to(request.referrer || root_path)
  end
end
