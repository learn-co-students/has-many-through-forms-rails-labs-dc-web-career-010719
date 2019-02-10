class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.build
    @user = @comments.build_user
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def update
    @post = Post.find(params[:id])
    byebug
    @post.update(post_params)
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:id, :title, :content, category_ids:[],
      categories_attributes: [:name], user_attributes: [:id, :username, :email],
      comments_attributes: [:id, :content, :user_id])
  end
end
