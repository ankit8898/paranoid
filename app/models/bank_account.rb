class BankAccount < ActiveRecord::Base
  attr_accessible :account_number, :user_id

  belongs_to :user,:with_deleted => true
end
