# simplecov for code coverage
require 'simplecov'
SimpleCov.start do
  add_filter '/spec/support/'
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rubocop-eql'

require 'rspec/its'
require 'byebug'

Dir[
  File.expand_path(File.join(File.dirname(__FILE__), 'support', '**', '*.rb'))
].each { |f| require f }

RSpec.configure do |config|
  # ignore things like focus: true if it would filter all examples
  config.run_all_when_everything_filtered = true
end
