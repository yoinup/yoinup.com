require 'bundler'
Bundler.setup
Bundler.require
require 'rack/contrib/try_static'
use Rack::Static, 
  :urls => ["/javascripts", "/stylesheets", "/images",
            "/team.html"],
  :root => "."
