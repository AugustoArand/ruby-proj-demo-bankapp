class Transaction < ApplicationRecord
  belongs_to :sender, class_name: 'Account'
  belongs_to :receiver, class_name: 'Account'

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :transaction_date, presence: true

  def execute
    ActiveRecord::Base.transaction do
      sender.decrement!(:balance, amount)
      receiver.increment!(:balance, amount)
      self.save!
    end
  end
end