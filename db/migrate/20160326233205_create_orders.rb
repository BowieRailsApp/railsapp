class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :table
      t.boolean :cooked, :default => false
      t.timestamps
    end
  end
end
