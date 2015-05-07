class CreateBankSubsidiaries < ActiveRecord::Migration
  def change
    create_table :bank_subsidiaries do |t|
      t.string :address
      t.references :bank, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
