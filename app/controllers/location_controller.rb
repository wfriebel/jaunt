get '/locations' do
  @locations = Location.all
  erb :'/locations/index'
end

get '/locations/:location_id' do
  @location = Location.find(params[:location_id])
  @posts = Post.where(location_id: @location.id)
  erb :'locations/show'
end

post '/post' do
  @posts = Post.create(user_id: session[:user_id], location_id: params[:location_id], content: params[:content])
  # @location = Location.find(params[:location_id])
  # if @post.save
    redirect "/locations/#{params[:location_id]}"
  # else
  #   @errors = @location.errors.full_messages
  #   erb :'posts/new'
  # end
end

post '/comment' do
  @comment = Comment.create(user_id: session[:user_id], post_id: params[:post_id])
  # @location = Location.find(params[:location_id])
  # if @post.save
    redirect "/locations/#{params[:location_id]}"
  # else
  #   @errors = @location.errors.full_messages
  #   erb :'posts/new'
  # end
end
