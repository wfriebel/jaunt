get '/locations' do
  @locations = Location.all
  erb :'/locations/index'
end

get '/locations/:location_id' do
  @location = Location.find(params[:location_id])
  @posts = Post.where(location_id: @location.id)
  erb :'locations/show'
end


post '/locations/:location_id' do
  redirect '/locations/#{params[:location_id]}'
end
