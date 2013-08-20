class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.integer :user_id
      t.string :account_number

      t.timestamps
    end
    add_index :bank_accounts, :user_id
  end
end
