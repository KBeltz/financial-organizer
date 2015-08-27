class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_name
      t.date :payment_due
      t.float :min_payment
      t.date :payment_date
      t.float :payment_made
      t.float :balance

      t.timestamps null: false
    end
  end
end
