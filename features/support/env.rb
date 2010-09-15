$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')

require 'linux_quest'

require 'rspec/expectations'
# require 'aruba'

ENV["PATH"] = File.expand_path(File.dirname(__FILE__) + "/../../bin") << ":" << ENV["PATH"]
