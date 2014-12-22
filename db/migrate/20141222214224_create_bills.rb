class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.sring :charge
      t.float :amount
      t.datetime :date_due
      t.boolean :is_paid
      t.references :User, index: true

      t.timestamps
    end
  end
end
