class BlogsController < ApplicationController

  def index
  end

  def show
    @post = Blog.find(params[:id])
  end

  def new
    @post = Blog.new
  end

  def edit
  end

  def create
    @post = Blog.new(blog_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end 

  private

    def blog_params
      params.require(:blog).permit(:title, :content)
    end

end
