get '/index' do

  erb :index

end


post '/login' do

  #create a user session to bring along...:{o
  session[:user] = User.find_by(email: params[:email], password: params[:password] )

  redirect '/users/id'

end


post '/signup' do


end


