class CreateSubnets < ActiveRecord::Migration
  def self.up
    create_table :subnets do |s|
      s.integer :id
      s.string :value
    end
  end

  def self.down
    drop_table :subnets
  end
end