class HomeController < ApplicationController
  before_action :set_data, only: %i[index]

  def index
  end

  def set_data
    projects
    @newsfeeds = NewsFeed.all.by_date
    @about = Section.find_by(name: "ABOUT")
    @join_us = Section.find_by(name: "JOIN_US")
    @emargency_care = Section.find_by(name: "EMARGENCY_CARE")
  end

  def news_feed
    @feed = NewsFeed.find(params[:id])
  end

  def projects
    @projects = Project.all.by_date
  end

  def partners
    @partners = Partner.all.by_date
  end

  def donate
    @donate = Section.find_by(name: "DONATE")
  end

  def testmonies
    @testmonies = Testmony.all.by_date
  end
end
