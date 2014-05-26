$:.unshift(File.expand_path('../../lib', __FILE__))

require 'pathname'
require 'rubygems'
require 'bundler'
require 'logger'
require 'log_buddy'

require 'adapter/spec/an_adapter'
require 'support/module_helpers'

Bundler.require(:default, :test)

RSpec.configure do |config|
  config.include(ModuleHelpers)
end

root_path = Pathname(__FILE__).dirname.join('..').expand_path
lib_path  = root_path.join('lib')
log_path  = root_path.join('log')
log_path.mkpath

#require 'adapter/spec/an_adapter'
#require 'adapter/spec/marshal_adapter'
#require 'adapter/spec/json_adapter'
#require 'adapter/spec/types'

logger = Logger.new(log_path.join('test.log'))
LogBuddy.init(:logger => logger)

RSpec.configure do |c|

end
