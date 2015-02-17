get '/' do

  redirect '/index'

end

get '/index' do

  erb :index

end


post '/login' do

  #create a user session to bring along...:{o
  session[:user] = User.find_by(email: params[:email])
  redirect '/users/id'

end


post '/signup' do
  #create a new user and give them as session if the create is successful.
  new_user = User.create(name: params[:name], email: params[:email], password: params[:password])

  if new_user
   session[:user] =
  else
  redirect '/login'

end

get '/logout' do
  #clears session and user is redirected back to index
  session.clear
  redirect '/index'


end
