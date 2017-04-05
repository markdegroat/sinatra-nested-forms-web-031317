require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"/pirates/new"
    end

    get '/new' do
      erb :"/pirates/new"
    end



    # code other routes/actions here
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end
      @ships = Ship.all

      erb :"/pirates/show"
    end

  end
end
