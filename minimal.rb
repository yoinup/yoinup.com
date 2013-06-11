require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra'
require 'haml'

class Minimal < Sinatra::Base
    set :static, true
    set :public_dir, File.dirname(__FILE__) + '/'
    get '/' do
        if request.env.has_key?('X_MOBILE_DEVICE')
            File.read(File.join('./', 'mobile_index.html'))
        else
            File.read(File.join('./', 'index.html'))
        end
    end
    get '/app/?' do
        if request.env['X_MOBILE_DEVICE']
            if ['ipad', 'iphone', 'ipod'].include?(request.env['X_MOBILE_DEVICE'].downcase)
                redirect 'https://itunes.apple.com/app/invibe/id655287757'
            elsif 'android' == request.env['X_MOBILE_DEVICE'].downcase
                redirect 'https://play.google.com/store/apps/details?id=com.Invibe.App'
            end
        end
        redirect '/'
    end
    get '/invitation/:code/?' do
        haml :code, :locals => { :code => params[:code]}
    end
end
