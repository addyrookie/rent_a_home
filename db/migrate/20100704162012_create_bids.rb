class CreateBids < ActiveRecord::Migration
  def self.up
    create_table :bids do |t|
      t.integer :house_id 
      t.integer :user_id
      t.integer :boli  
      t.boolean :accepted , :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :bids
  end
end
