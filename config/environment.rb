# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.9' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

	config.gem "sqlite3-ruby", :lib => "sqlite3"

	config.gem 'jakewendt-assert_this_and_that',
		:lib    => 'assert_this_and_that',
		:source => 'http://rubygems.org'

	require 'simply_commentable'

	config.autoload_paths << File.expand_path( File.join(File.dirname(__FILE__),'..','test/app/models'))

end
