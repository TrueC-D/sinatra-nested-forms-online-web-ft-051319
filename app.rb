require './environment'

module FormsLab
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  class App < Sinatra::Base
    
    get ('/'){erb :root}
    
    get '/new' do
      erb :'pirates/new'
      
    end
    
    post '/pirates' do 
      @pirate_name = params[:pirate][:name]
      @pirate_weight = params[:pirate][:weight]
      @pirate_height = params[:pirate][:height]
      @ship1_name = params[:pirate][:ships][0][:name]
      @ship1_type = params[:pirate][:ships][0][:type]
      @ship1_booty = params[:pirate][:ships][0][:booty]
      @ship2_name = params[:pirate][:ships][1][:name]
      @ship2_type = params[:pirate][:ships][1][:type]
      @ship2_booty = params[:pirate][:ships][1][:booty]
      
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
