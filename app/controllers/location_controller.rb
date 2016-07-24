get '/locations' do
  @locations = Location.all
  erb :'/locations/index'
end

get '/locations/:location_id' do
  @location = Location.find(params[:location_id])
  posts = Post.where(location_id: @location.id)
  @posts = chronological(posts)
  erb :'locations/show'
end
