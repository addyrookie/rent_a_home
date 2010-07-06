class AddStateToCity < ActiveRecord::Migration
  def self.up
    add_column :cities, :state_id, :integer
  end

  def self.down
    remove_column :cities, :state_id
  end
end
