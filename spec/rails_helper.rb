ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'capybara/rails'
require 'rspec/rails'
require 'pry'

ActiveRecord::Migration.maintain_test_schema!

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.filter_sensitive_data('<twilio account sid>') { ENV['TWILIO_ACCOUNT_SID'] }
  c.filter_sensitive_data('<twilio auth token>') { ENV['TWILIO_AUTH_TOKEN'] }
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # config.use_transactional_fixtures = true
config.before(:suite) do
  DatabaseCleaner.strategy = :truncation
end

config.around(:each) do |example|
  DatabaseCleaner.cleaning do
    example.run
  end
end

  config.infer_spec_type_from_file_location!
end
