get "/login" do
	erb :"/sessions/login"
end

post "/login" do
	user_name = params[:user_name]
	password = params[:password]
	user = User.find_by(user_name: user_name)
	if user && user.password == password
		login(user)
		redirect "/"
	else
		@error = "Username cannot be found or username does not match password"
		erb :"/sessions/login"
	end
end

get "/logout" do
	logout
	redirect "/"
end

get "/register" do
	erb :"/sessions/register"
end

post "/register" do
	user = User.new(params[:user])
	password = params[:user][:password]
	if user.save && password && password.length > 5
		login(user)
		redirect "/"
	else
		@errors = user.errors.full_messages
		if !password || password.length <= 5
			@errors << "Password must be more than 5 characters"
		end
		erb :"/sessions/register"
	end
end