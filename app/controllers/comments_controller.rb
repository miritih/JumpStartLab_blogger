class CommentsController < ApplicationController
  before_filter :require_login, except: [:create]
  def create
  @comment = Comment.new(comment_params)
  @comment.article_id = params[:article_id]

  @comment.save

  redirect_to article_path(@comment.article)
end

private
def require_login
  unless logged_in?
    redirect_to login_path
  end
end

def comment_params
  params.require(:comment).permit(:author_name, :body)
end
end
