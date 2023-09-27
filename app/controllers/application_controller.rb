class ApplicationController < ActionController::Base

  #signup,signin時に名前も受け取れるように変更
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource) #ログイン後
    user_path
  end

  def after_sign_out_path_for(resource) #ログアウト後ルートパスへ
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
