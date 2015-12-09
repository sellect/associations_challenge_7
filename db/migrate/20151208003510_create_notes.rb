class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :message
      t.references :order, index: true, null: false
      t.references :customer, index: true, null: false

      t.timestamps
    end
  end
end
