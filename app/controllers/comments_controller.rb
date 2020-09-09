class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end

  def create
    @comments = Comment.new(comment: params[:comment][:comment],tweet_id: params[:comment][:tweet_id])
    if @comments.save
      puts "OK create"
      redirect_to root_path
    else
      puts "NO create"
    end
  end
end
