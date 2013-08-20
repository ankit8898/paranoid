class User < ActiveRecord::Base
  attr_accessible :name
  acts_as_paranoid

  has_one :bank_account
end
