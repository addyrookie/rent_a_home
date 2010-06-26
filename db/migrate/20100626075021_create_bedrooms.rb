class CreateBedrooms < ActiveRecord::Migration
  def self.up
    create_table :bedrooms do |t|
      t.integer :bedroom

      t.timestamps
    end
  end

  def self.down
    drop_table :bedrooms
  end
end
