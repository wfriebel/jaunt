post '/comment' do
  if current_user
    @comment = Comment.create(user_id: session[:user_id], content: params[:comment_content], post_id: params[:post_id])
    redirect "/locations/#{params[:location_id]}"
  else
    redirect "/login"
  end
end
