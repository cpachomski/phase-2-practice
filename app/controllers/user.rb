get '/users/:id' do

    @user = session[:user]

      erb :dashboard


end