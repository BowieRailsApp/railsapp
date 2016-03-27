class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :tables
      t.boolean :cooked, :default => false
    end
  end
end
