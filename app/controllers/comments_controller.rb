class CommentsController < ApplicationController
  def create
    Comment.create(post_id: params[:post_id], commenter: params[:commenter], content: params[:content])

    redirect_to post_path(params[:post_id])
  end
end
