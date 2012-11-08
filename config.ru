require 'rack/mobile-detect'
require 'rack/contrib/try_static'
require './minimal'

use Rack::MobileDetect

run Minimal.new

