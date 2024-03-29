get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/register' do
  User.create!(params) # params has keys, :email, :password, :password_confirmation
end

post '/login' do
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    erb :access_granted
  else
    redirect to '/'
  end
 end

get '/logout' do
  session.clear
  redirect to'/'
end
