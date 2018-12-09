# frozen_string_literal: true

class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user)
          .permit(:full_name, :email, :password,
                  :password_digest, :password_confirmation)
  end
end
