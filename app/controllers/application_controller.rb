class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def set_current(user)
    session[:user_id] = user.id
    @current_user = user
  end

  # 清空缓存
  def clear_current_merchant
    session[:user_id] = nil
    @current_user = nil
  end
  # 验证是否登陆
  def current_login
    @current_user.present?
  end

end
