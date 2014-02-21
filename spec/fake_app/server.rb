class Server
  include ActiveModel::Model

  attr_accessor :domain_name, :host_name, :ip

  validates :domain_name, :domain_name => true
  validates :host_name, :host_name => true
  validates :ip, :ip => true
end