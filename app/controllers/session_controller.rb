class SessionController < ApplicationController
  layout 'application2'

  def new
    @user = User.new
  end

  def create
    @user = User.find_by("email = '#{params[:user][:email]}' or phone = '#{params[:user][:email]}'")
    if @user && @user.authenticate(params[:user][:password])
      set_current @user
      redirect_to new_article_path
    else
      flash[:warning] = "用户名或密码不正确"
      render :new, layout: 'application2'
    end
  end
end
