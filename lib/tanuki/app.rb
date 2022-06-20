# frozen_string_literal: true

module Tanuki
    # Sinatra application
    class App < Sinatra::Base
    
      set :aws, 'AKIALALEMEL310220LIA'

      set :logging, true
      set :static, true
      set :public_dir, File.expand_path('static', __dir__)
      set :views, File.expand_path('views', __dir__)
      get '/' do
        erb :index, :locals => {:complaince => true}
      end
    end
  end
  
