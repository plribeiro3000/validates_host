class IpValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    key = :"activerecord.errors.models.#{record.class.name.downcase}.attributes.#{attribute.to_s}.invalid"
    record.errors[attribute] << I18n.t(key, :default => :"activerecord.errors.messages.invalid") unless ValidatesHost::Ip.new(value).valid?
  end
end

module ValidatesHost
  class Ip
    def initialize(ip)
      @ip = ip
    end

    def valid?
      return true if @ip.blank?
      @ip =~ /^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/
    end

    def ip
      @ip
    end
  end
end