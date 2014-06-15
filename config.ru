$:.unshift(File.dirname(__FILE__))

require 'app'
use ActiveRecord::ConnectionAdapters::ConnectionManagement

run App.new
