class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:username, :member_of, :profile, :works]
  end

  private
  def update_params
    params.require(:user).permit(:username, :email, :profile,:works, :member_of)
  end
  def move_to_index
    redirect_to prototypes_path unless user_signed_in?
  end
  def set_user
    @user = User.find(params[:id])
  end
end
