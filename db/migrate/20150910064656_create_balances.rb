class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.integer :account_id
      t.float :balance_amount

      t.timestamps null: false
    end
  end
end
