require_relative "../../config/environment"
require_relative "../models/employer"
require_relative "../models/response"
class ApplicationController < Sinatra::Base
configure do
    set :public_folder, "./static"
    set :views, "./app/views"
    enable :sessions
    set :session_secret, "RemindThem!"
  end
  get '/' do
  	erb :index
  end
  post '/response' do
  	x = params[:one].to_i + params[:two].to_i
  	y = params[:three].to_i + params[:four].to_i
    x *= 40
    y *= 40
    x += rand(40)
    y = 320 - y
    y += rand(40)
    y += 15
    x += 15

  	@new_response = Response.create({:employer_id => Employer.where({:name => "Sam Devorsetz"}).first.id, :x => x, :y => y})
    @new_response.save!
  	redirect '/response'
  end
  get '/response' do
  	@all_responses = Response.all
  	erb :results
  end
end