class CreateFurnishings < ActiveRecord::Migration
  def self.up
    create_table :furnishings do |t|
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :furnishings
  end
end
