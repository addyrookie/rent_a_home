class CreateHousetypes < ActiveRecord::Migration
  def self.up
    create_table :housetypes do |t|
      t.string :housetype

      t.timestamps
    end
  end

  def self.down
    drop_table :housetypes
  end
end
