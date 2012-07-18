class Server < ActiveRecord::Base
  validates :domain, :domain => true
end