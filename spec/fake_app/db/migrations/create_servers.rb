class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |u|
      u.string :domain
    end
  end

  def self.down
    drop_table :servers
  end
end