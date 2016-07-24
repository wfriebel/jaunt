post '/comment' do
  if current_user
    @comment = Comment.create(user_id: session[:user_id], post_id: params[:post_id])
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
