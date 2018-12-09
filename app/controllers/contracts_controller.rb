# frozen_string_literal: true

class ContractsController < ApplicationController
  def index
    if logged_in?
      @contracts = @current_user.contracts
    else
      redirect_to signin_path
    end
  end
end
