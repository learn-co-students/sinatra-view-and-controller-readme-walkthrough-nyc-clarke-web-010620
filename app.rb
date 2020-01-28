require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    
    erb :reverse
  end

  post '/reverse' do
    @name = params[:string]
    @reversed = @name.reverse 
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    

  end
end