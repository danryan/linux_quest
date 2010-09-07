# module RSpec::Core::ObjectExtensions
#   def feature(*args, &block)
#     args << {} unless args.last.is_a?(Hash)
#     args.last.update :type => :features, :steak => true    
#     describe(*args, &block)
#   end
# end

require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'linux_quest'
require 'rspec'
require 'rspec/autorun'
require 'steak'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}


module AcceptanceExampleGroup
  def self.included(base)
    base.instance_eval do
      alias scenario example
      alias background before
      alias feature describe
    end
  end
end

RSpec.configure do |config|
  config.include AcceptanceExampleGroup, :type => :features
end
