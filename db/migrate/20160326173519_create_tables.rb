class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :guests
      t.boolean :paid
      t.references :users
    
      t.timestamps
    end
  end
end
