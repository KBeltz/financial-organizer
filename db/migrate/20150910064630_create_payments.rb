class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :account_id
      t.float :amount
      t.date :payment_date
      t.string :confirmation_number

      t.timestamps null: false
    end
  end
end
