require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get ('/'){erb :root}
    
    get '/new' do
      # set :root, File.join(File.dirname(views/pirates), '..')
      erb :'pirates/new'
      
    end
    
    post '/pirates' do 
      @pirate = params[:pirate]
      @ship1 = params[:pirate][:ships][0]
      @ship2 = params[:pirate][:ships][1]
      
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
