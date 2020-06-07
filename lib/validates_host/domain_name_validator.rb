# frozen_string_literal: true

class DomainNameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid, options) unless ValidatesHost::DomainName.new(value).valid?
  end
end
