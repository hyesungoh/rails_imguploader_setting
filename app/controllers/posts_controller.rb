class PostsController < ApplicationController
  def index
    @posts  = Post.all
  end

  def new
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    
    uploader = ImguploaderUploader.new
    uploader.store!(params[:img_url])
    post.img_url = uploader.url
    
    post.save
    redirect_to '/'
    
  end

  def delete
  end
  
end
