get "/posts/:id/edit" do 
  @post=Post.find(params[:id])
  erb :edit
end 

get "/posts/:id" do 
  @post = Post.find(params[:id]);
  erb :post
end 

