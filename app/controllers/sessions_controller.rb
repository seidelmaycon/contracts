# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome back, #{user.first_name}"
    else
      flash.now.alert = "We weren't able to find a user with the specified " \
                        "email and password combination"
      render :new
    end
  end
end
