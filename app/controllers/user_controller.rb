get '/users' do
  @users = User.all
  erb :'/users/index'
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :'/users/show'
end
