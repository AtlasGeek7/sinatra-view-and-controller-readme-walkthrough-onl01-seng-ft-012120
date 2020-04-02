require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    @reversed_string = nil
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse

    erb :reverse
  end

  get '/friends' do
    # Write your code here!

    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end