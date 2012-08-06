class HostNameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    key = :"activerecord.errors.models.#{record.class.name.downcase}.attributes.#{attribute.to_s}.invalid"
    record.errors[attribute] << I18n.t(key, :default => :"activerecord.errors.messages.invalid") unless ValidatesHost::HostName.new(value).valid?
  end
end

module ValidatesHost
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
end