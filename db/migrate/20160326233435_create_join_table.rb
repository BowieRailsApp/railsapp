class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :orders, :fooditems do |t|
      t.index [:order_id, :fooditem_id]
      t.index [:fooditem_id, :order_id]
    end
  end
end
