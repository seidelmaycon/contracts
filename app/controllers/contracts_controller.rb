# frozen_string_literal: true

class ContractsController < ApplicationController
  before_action :autheticate_user

  def index
    @contracts = @current_user.contracts
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params.merge(user_id: @current_user.id))
    if @contract.save
      redirect_to contracts_path, notice: 'Your contract was added'
    else
      render :new
    end
  end

  private

  def autheticate_user
    redirect_to signin_path unless logged_in?
  end

  def contract_params
    params.require(:contract).permit(:ends_on, :costs, :vendor_id, :category_id)
  end
end
