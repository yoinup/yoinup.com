require 'rack/mobile-detect'
require './minimal'

use Rack::MobileDetect

run Minimal.new

