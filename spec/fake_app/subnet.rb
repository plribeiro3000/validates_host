# frozen_string_literal: true

class Subnet
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :id, :value

  validates :value, subnet: true
end
