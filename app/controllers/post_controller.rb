post '/post' do
  if current_user
    @posts = Post.create(user_id: session[:user_id], location_id: params[:location_id], content: params[:content])
  # @location = Location.find(params[:location_id])
  # if @post.save
    redirect "/locations/#{params[:location_id]}"
  else
    redirect "/login"
  end
  # else
  #   @errors = @location.errors.full_messages
  #   erb :'posts/new'
  # end
end
