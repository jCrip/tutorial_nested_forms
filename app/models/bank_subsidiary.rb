class BankSubsidiary < ActiveRecord::Base
  belongs_to :bank
  validates :address, presence: true
end
