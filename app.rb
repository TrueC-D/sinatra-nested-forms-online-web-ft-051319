require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get ('/'){erb :root}
    
    get('/new'){erb :new}
    
    post '/pirates' do 
      
      erb :show
    end

    # code other routes/actions here

  end
end
