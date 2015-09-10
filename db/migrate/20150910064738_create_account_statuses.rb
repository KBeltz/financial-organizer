class CreateAccountStatuses < ActiveRecord::Migration
  def change
    create_table :account_statuses do |t|
      t.integer :account_id
      t.date :due_date
      t.boolean :overdue

      t.timestamps null: false
    end
  end
end
