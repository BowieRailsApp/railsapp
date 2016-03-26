class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :fooditems, :tables do |t|
      t.index [:fooditem_id, :table_id]
      t.index [:table_id, :fooditem_id]
    end
  end
end
