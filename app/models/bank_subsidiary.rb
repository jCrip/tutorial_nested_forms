class BankSubsidiary < ActiveRecord::Base
  belongs_to :bank
  validates :address, presence: true

  def to_s
    address
  end
end
