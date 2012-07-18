class Server < ActiveRecord::Base
  validates :domain_name, :domain_name => true
  validates :host_name, :host_name => true
  validates :ip, :ip => true
end