class DomainNameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    key = :"activerecord.errors.models.#{record.class.name.downcase}.attributes.#{attribute.to_s}.invalid"
    record.errors[attribute] << I18n.t(key, :default => :"activerecord.errors.messages.invalid") unless ValidatesHost::DomainName.new(value).valid?
  end
end

module ValidatesHost
  class DomainName
    def initialize(domain_name)
      @domain_name = domain_name
    end

    def valid?
      return true if @domain_name.nil?
      @domain_name =~ /^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/
    end

    def domain_name
      @domain_name
    end
  end
end