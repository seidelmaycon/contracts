# frozen_string_literal: true

class ContractsController < ApplicationController
  before_action :autheticate_user
  before_action :set_contract, only: [:edit, :update]

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

  def edit; end

  def update
    if @contract.update(contract_params)
      redirect_to contracts_path, notice: 'Your contract was updated'
    else
      render :edit
    end
  end

  private

  def set_contract
    @contract = Contract.find(params[:id])
  end

  def autheticate_user
    redirect_to signin_path unless logged_in?
  end

  def contract_params
    params.require(:contract).permit(:ends_on, :costs, :vendor_id, :category_id)
  end
end
