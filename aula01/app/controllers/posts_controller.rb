class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    post = Post.create(params[:post])
    flash[:notice] = "Post #{post.id} salvo com sucesso"
    redirect_to :action => :index
  end
  
  def index
  end
end