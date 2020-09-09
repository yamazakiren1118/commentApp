class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @cerect_tweet = Tweet.find_by(id: params[:tweet_id])
    @page = params[:page]
    
  end

  def new
    @tweets = Tweet.new
  end

  def create
    @tweets = Tweet.new(tweet: params[:tweet][:tweet])
    if @tweets.save
      puts "OK create"
      redirect_to root_path
    else
      puts "NO create"
    end
  end
end
