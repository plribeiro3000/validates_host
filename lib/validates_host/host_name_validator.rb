class HostNameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << I18n.t("errors.messages.invalid") unless HostName.new(value).valid?
  end
end

class HostName
  def initialize(host_name)
    @host_name = host_name
  end

  def valid?
    return true if @host_name.blank?
    @host_name =~ /^[a-z][a-z0-9-]+$/
  end

  def host_name
    @host_name
  end
end