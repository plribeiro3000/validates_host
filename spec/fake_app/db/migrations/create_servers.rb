class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |s|
      s.string :domain_name
      s.string :host_name
      s.string :ip
    end
  end

  def self.down
    drop_table :servers
  end
end