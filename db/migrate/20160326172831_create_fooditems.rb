class CreateFooditems < ActiveRecord::Migration
  def change
    create_table :fooditems do |t|
      t.string :itemname
      t.string :cuisine
      t.integer :price
      t.timestamps
    end
  end
end
