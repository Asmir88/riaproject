class CommentsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new(params[:comment])
    @comment.user = User.find(session[:user_id])
    @comment.topic.forum.last_post_at = Time.now
    @comment.topic.forum.last_poster_id = session[:user_id]
    @comment.topic.forum.last_topic_id = @comment.topic.id
    @comment.save
    @comment.topic.forum.save
    redirect_to @topic
  end

end
