class HostNameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid, options) unless ValidatesHost::HostName.new(value).valid?
  end
end