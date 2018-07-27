require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
  @session = session
  erb :index
  end

  post "/checkout" do
  @item = params[:item]
  session[:item] = @item
    binding.pry
  @session = session

  erb :checkout
  end

end
