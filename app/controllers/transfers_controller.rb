class TransfersController < ApplicationController
  before_action :set_accounts, only: [:new, :create]
  
  def new
    @transfer = Transaction.new
  end

  def create
    @transfer = Transaction.new(transfer_params)
    if @transfer.save
      redirect_to success_transfer_path, notice: 'Transferência realizada com sucesso.'
    else
      render :new
    end
  end

  private

  def set_accounts
    @accounts = Account.all
  end

  def transfer_params
    params.require(:transaction).permit(:amount, :from_account_id, :to_account_id)
  end
end