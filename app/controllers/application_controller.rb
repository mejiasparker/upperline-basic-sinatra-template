require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  post '/rossified' do
    @url = params["link"]
    erb :results
  end
  
  post '/bobgif' do
   search_term = params["gif"]
   @gifurl = get_gif(search_term)
   erb :gif
  end
  
end
