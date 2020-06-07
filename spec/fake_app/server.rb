# frozen_string_literal: true

class Server
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :domain_name, :host_name, :ip

  validates :domain_name, domain_name: true
  validates :host_name, host_name: true
  validates :ip, ip: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end
