class Account < ApplicationRecord
  belongs_to :user

  validates :balance, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def transfer(amount, to_account)
    return false if amount <= 0 || amount > balance

    ActiveRecord::Base.transaction do
      self.balance -= amount
      to_account.balance += amount
      save!
      to_account.save!
    end
    true
  rescue ActiveRecord::RecordInvalid
    false
  end
end