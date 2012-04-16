class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    post = Post.create(params[:post])
    if post.valid?
      flash[:notice] = "Post #{post.id} salvo com sucesso"
      redirect_to :action => :index
    else
      flash[:error] = "Slug dublicado"
      redirect_to :action => :new
    end
  end
  
  def index
  end
  
  def validate_slug
    render :json => {:slug => Post.find_by_slug(params[:slug]).nil?}.to_json
  end
end