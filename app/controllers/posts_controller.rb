class PostsController < ApplicationController
  def index
    @page = params[:page].to_i
    @total = Post.count

    @posts = paginate(Post.order(created_at: :desc), @page)
  end

  def show
    @post = Post.find(params[:id])

    @photos = @post.photos.order(created_at: :asc)
    @comments = @post.comments.order(created_at: :asc)
  end

  def create
    post = Post.new(title: params[:title], content: params[:content])

    if post.save
      Announcement.create!(category: 'PostCreated', subject_id: post.id)
    end

    redirect_to posts_path
  end
end
