class Bank < ActiveRecord::Base
  has_many :bank_subsidiaries, dependent: :destroy

  accepts_nested_attributes_for :bank_subsidiaries

  validates :name, presence: true

  def to_s
    name
  end
end
