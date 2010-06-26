class CreateHouses < ActiveRecord::Migration
  def self.up
    create_table :houses do |t|
      t.integer :country_id
      t.integer :state_id
      t.integer :city_id
      t.text    :address
      t.string  :location
      t.integer :built_area
      t.integer :rent
      t.integer :housetype_id
      t.integer :bedroom_id
      t.integer :furnishing_id
      t.integer :user_id
      t.string  :tagline
      t.text    :description

      t.timestamps
    end
  end

  def self.down
    drop_table :houses
  end
end
