require 'rubygems'
require 'rspec'
require 'active_model'

Dir.glob(File.dirname(__FILE__) + '/../lib/**/*.rb').each { |file| require file }
Dir.glob(File.dirname(__FILE__) + '/fake_app/**/*.rb').each { |file| require file }