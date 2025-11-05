class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :account_number, null: false
      t.decimal :balance, precision: 10, scale: 2, default: 0.0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end