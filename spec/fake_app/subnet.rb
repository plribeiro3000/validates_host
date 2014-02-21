class Subnet
  include ActiveModel::Model

  attr_accessor :id, :value

  validates :value, :subnet => true
end