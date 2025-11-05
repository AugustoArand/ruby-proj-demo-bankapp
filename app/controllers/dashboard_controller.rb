class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @accounts = current_user.accounts
    @recent_transactions = Transaction.where(account_id: @accounts.pluck(:id)).order(created_at: :desc).limit(5)
  end
end