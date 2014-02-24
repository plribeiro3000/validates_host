class SubnetValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid, options) unless ValidatesHost::Subnet.new(value).valid?
  end
end