class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :track_letter
      t.integer :track_num
      t.references :customer, index: true, null: false

      t.timestamps
    end
  end
end
