class Bank < ActiveRecord::Base
  has_many :bank_subsidiaries, dependent: :destroy
  validates :name, presence: true

  def to_s
    name
  end
end
