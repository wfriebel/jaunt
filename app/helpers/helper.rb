def login(user)
	session[:user_id] = user.id
end

def logout
	session[:user_id] = nil
end

def current_user
	if session[:user_id]
		User.find(session[:user_id])
	else
		nil
	end
end

def chronological(content)
	content.sort { |a, b| b.id <=> a.id }
end
