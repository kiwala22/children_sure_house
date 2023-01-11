class HomeController < ApplicationController
  before_action :set_data, only: %i[index]

  def index
  end

  def set_data
    projects
    @newsfeeds = NewsFeed.all.by_date
  end

  def news_feed
    @feed = NewsFeed.find(params[:id])
  end

  def projects
    @projects = Project.all.by_date
  end
end
