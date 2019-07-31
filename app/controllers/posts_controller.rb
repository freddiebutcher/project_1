class PostsController < ApplicationController
  # before_action :check_for_login, :only => [:index, :edit, :update, :following, :followers]


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create post_params
    @current_user.posts << post
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      post.img_link = req["public_id"]
      post.save
    end
    redirect_to post
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      post.img_link = req["public_id"]
    end
    post.save
    redirect_to post
  end

  def show
    @post = Post.find params[:id]
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path
end

private
def post_params
  params.require(:post).permit(:episode_name, :show_name, :episode_description, :pod_link, :img_link)
end

end
