get "/posts/:id/edit" do 
  unless session[:user]
   @post=Post.find(params[:id])
   erb :edit
  else 
    redirect "/"
  end
end 

post "/posts/:id/edit" do 
  unless session[:user]
  puts params[:post]
  post = Post.find(params[:id])
  puts post.inspect
  post.update_attributes(params[:post])
  puts post.inspect
  redirect "/posts/#{params[:id]}"
  


end

get "/posts/new" do
  erb :new_post
end

post "/posts" do 
  puts params
  post = Post.create(params[:post])
  redirect "/posts/#{post.id}"
end

get "/posts/:id" do 
  @post = Post.find(params[:id]);
  erb :post
end 

