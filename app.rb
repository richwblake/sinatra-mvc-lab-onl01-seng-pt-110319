require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @result_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
        # binding.pry
        erb :results
    end


end 