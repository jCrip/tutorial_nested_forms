class BankSubsidiary < ActiveRecord::Base
  belongs_to :bank
  validates :address, precense: true
end
