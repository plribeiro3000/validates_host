class Subnet < ActiveRecord::Base
  validates :value, :subnet => true
end