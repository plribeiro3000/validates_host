# frozen_string_literal: true

class IpValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid, options) unless ValidatesHost::Ip.new(value).valid?
  end
end
