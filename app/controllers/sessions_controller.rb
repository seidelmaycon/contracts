# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome back, #{user.first_name}"
    else
      flash.now.alert = 'Email or password is invalid'
      render :new
    end
  end
end
