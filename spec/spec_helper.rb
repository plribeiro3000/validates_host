require 'rspec'
require 'active_model'
require 'coveralls'
require 'shoulda-matchers'

Coveralls.wear!

require 'validates_host'
require 'fake_app/server'
require 'fake_app/subnet'

include Shoulda::Matchers::ActiveModel