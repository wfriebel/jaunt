get '/locations' do
  @locations = Location.all
  erb :'/locations/index'
end

get '/locations/:location_id' do
  @location = Location.find(params[:locaction_id])
  @posts = Post.where(location_id: @location.location_id)
  erb :'locations/show'
end

post 'locations/:location_id/post' do
  @location = Location.find(params[:locaction_id])
  @posts = Post.create(user_id: session[:id], location_id: @location.id, content: params[:content])
  if @post.save
    redirect "/locations/#{@location.id}"
  else
    @errors = @location.errors.full_messages
    erb :'posts/new'
  end
end
