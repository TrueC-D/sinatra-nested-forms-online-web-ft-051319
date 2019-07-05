require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get ('/'){erb :root}
    
    get '/new' do
      # set :root, File.join(File.dirname(views/pirates), '..')
      erb :new
      
    end
    
    post '/pirates' do 
      
      erb :show
    end

    # code other routes/actions here

  end
end
