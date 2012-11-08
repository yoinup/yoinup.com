require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra/base'

class Minimal < Sinatra::Base
  set :static, true
  set :public, File.dirname(__FILE__) + '/'
  get '/' do
    if request.env.has_key?('X_MOBILE_DEVICE')
        File.read(File.join('./', 'index2.html'))
    else
        File.read(File.join('./', 'index.html'))
    end
  end
end
